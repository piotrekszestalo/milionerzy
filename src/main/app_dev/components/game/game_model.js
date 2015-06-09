angular.module('millionaries')

.service('Game', ['UsersREST', 'QuestionsREST', 'AnswersREST',
    function(UsersREST, QuestionsREST, AnswersREST) {
        var self = this;
        var status = {
            login_in : false,
            is_game_over : false ,
            is_win:false,
            level: 0
        }
        self.bonuses = [];
        var NUM_OF_QUESTIONS = 50;



        this.create = function(user) {
            return UsersREST.save(user, function(res) {
                self.user = res;
            	var res = self.generateQuestion();
            	res.$promise.then(function(){            		
                	status.login_in = true;	
                    status.is_game_over = false;
                    self.getBonuses()
            	})                
            })
        }


        this.recreate = function() {
            return UsersREST.update(function(res) {
                self.user = res;
                var res = self.generateQuestion();
                res.$promise.then(function(){                   
                    status.login_in = true; 
                    self.getBonuses()
                });
            })             
        }

        this.getQuestionNum = function() {
            if( status.level == null ) return 1;
            return status.level + 1;
        }

        this.tryAgain = function() {
             status.is_game_over = false;
        }


        this.destroy = function() {
            return UsersREST.delete();
        }

        this.getUser = function() {
        	return self.user;
        }

        this.isLogin = function() {
            return status.login_in;
        }


        this.isWin = function() {
            return status.is_win;
        }


        this.generateQuestion = function() {
            return QuestionsREST.get(function(res) {

                if( res.user.level != null )
                status.level = res.user.level;

                if(res.user.level != null && res.user.level == 12 ) {
                    status.is_win = true;

                    self.destroy();
                    status.is_game_over = true;
                    status.login_in = false;


                    return;
                }


                self.question = res.question;
                angular.forEach(self.question.answers,function(v,k){
                    if(v.correct) {
                        console.info("Dobra odpowiedz: "+v.position);
                        return;
                    }
                })
            })
        }


        this.getQuestion = function() {
            return self.question;
        }




        this.checkAnswer = function(answer) {
            AnswersREST.save({  id: answer.id },
            function(res) {
                console.log('res ' , res);
            	if(res.status) {
                    self.generateQuestion();
                }
                else {
                    self.destroy();
                    status.is_game_over = true;
                    status.login_in = false;
                }
            });
        }


        this.isGameOver = function() {
        	return status.is_game_over;
        }



        this.getBonuses = function() {
             UsersREST.query( { bonuses: 'bonuses' }, function(res) {
                if( !angular.isArray(res) ) {
                    console.log('RESPONSE NO ARRAR' ,res);
                }
                self.bonuses = [];
                angular.forEach( res, function(v,k) {
                    self.bonuses.push({
                        name: v.name,
                        url: v.url,
                        was_used: false
                    })    
                });                
            })
        }


        this.useBonus = function( bonus ) {
            console.log('bonus ' , bonus);
           QuestionsREST.query( {bonus:bonus.url}, function(res) {
                if( !angular.isArray(res) ) {
                    console.log('RESPONSE NO ARRAR WITH ANSWERS' ,res);
                    return;
                }
                bonus.was_used = true;

                angular.forEach(self.question.answers,function(v,k){
                    v.good = false;
                })

                angular.forEach( res ,function(va,ka){
                    angular.forEach(self.question.answers,function(v,k){
                        if(va.id == v.id) v.good = true;
                    });
                });                
           })
        }


        this.getPrice = function(level) {
            var pln = 0;
            if( level == null ) pln = 0;
            else {
                if( level == 0 ) pln = 0;
                if( level == 1 ) pln = 500;
                if( level == 2 ) pln = 1000;
                if( level == 3 ) pln = 2000;
                if( level == 4 ) pln = 5000;
                if( level == 5 ) pln = 10000;
                if( level == 6 ) pln = 20000;
                if( level == 7 ) pln = 40000;
                if( level == 8 ) pln = 75000;
                if( level == 9 ) pln = 125000;
                if( level == 10 ) pln = 250000;
                if( level == 11 ) pln = 500000;
                if( level == 12 ) pln = 1000000;    
            } 
            return pln+" PLN"
        }




    }
])