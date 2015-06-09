'use strict';

angular.module('angular-svg-round-progress')
    .directive('roundProgress', ['$window', 'roundProgressService', 'roundProgressConfig', function($window, service, roundProgressConfig){

            var base = {
                restrict: "EA",
                replace: true
            };

            if(!service.isSupported){
                return angular.extend(base, {
                    // placeholder element to keep the structure
                    template: '<div class="round-progress"></div>'
                });
            }

            return angular.extend(base, {
                scope:{
                    current:        "=",
                    max:            "=",
                    semi:           "=",
                    rounded:        "=",
                    clockwise:      "=",
                    radius:         "@",
                    color:          "@",
                    bgcolor:        "@",
                    stroke:         "@",
                    iterations:     "@",
                    animation:      "@"
                },
                link: function (scope, element) {
                    var ring        = element.find('path'),
                        background  = element.find('circle'),
                        options     = angular.copy(roundProgressConfig),
                        resetValue;

                    var renderCircle = function(){
                        var isSemicircle     = options.semi;
                        var radius           = parseInt(options.radius) || 0;
                        var stroke           = parseInt(options.stroke);
                        var diameter         = radius*2;
                        var backgroundSize   = radius - (stroke/2);

                        element.css({
                            "width":        diameter + "px",
                            "height":       (isSemicircle ? radius : diameter) + "px",
                            "overflow":     "hidden" // on some browsers the background overflows, if in semicircle mode
                        });

                        ring.css({
                            "stroke":           options.color,
                            "stroke-width":     stroke,
                            "stroke-linecap":   options.rounded ? "round": "butt"
                        });

                        if(isSemicircle){
                            ring.attr("transform", options.clockwise ? "translate("+ 0 +","+ diameter +") rotate(-90)" : "translate("+ diameter +", "+ diameter +") rotate(90) scale(-1, 1)");
                        }else{
                            ring.attr("transform", options.clockwise ? "" : "scale(-1, 1) translate("+ (-diameter) +" 0)");
                        }

                        background.attr({
                            "cx":           radius,
                            "cy":           radius,
                            "r":            backgroundSize >= 0 ? backgroundSize : 0
                        }).css({
                            "stroke":       options.bgcolor,
                            "stroke-width": stroke
                        });
                    };

                    var renderState = function (newValue, oldValue){
                        if(!angular.isDefined(newValue)){
                            return false;
                        }

                        if(newValue < 0){
                            resetValue = oldValue;
                            return scope.current = 0;
                        }

                        if(newValue > options.max){
                            resetValue = oldValue;
                            return scope.current = options.max;
                        }

                        var max                 = options.max || 0;
                        var easingAnimation     = service.animations[options.animation];
                        var start               = oldValue === newValue ? 0 : (oldValue || 0); // fixes the initial animation
                        var val                 = newValue - start;
                        var currentIteration    = 0;
                        var totalIterations     = parseInt(options.iterations);
                        var radius              = options.radius;
                        var circleSize          = radius - (options.stroke/2);
                        var elementSize         = radius*2;

                        if(angular.isNumber(resetValue)){
                            // the reset value fixes problems with animation, caused when limiting the scope.current
                            start       = resetValue;
                            val         = newValue - resetValue;
                            resetValue  = null;
                        }

                        (function animation(){
                            service.updateState(
                                easingAnimation(currentIteration, start, val, totalIterations),
                                max,
                                circleSize,
                                ring,
                                elementSize,
                                options.semi);

                            if(currentIteration < totalIterations){
                                $window.requestAnimationFrame(animation);
                                currentIteration++;
                            }
                        })();
                    };

                    scope.$watchCollection('[current, max, semi, rounded, clockwise, radius, color, bgcolor, stroke, iterations]', function(newValue, oldValue, scope){

                        // pretty much the same as angular.extend,
                        // but this skips undefined values and internal angular keys
                        angular.forEach(scope, function(value, key){
                            // note the scope !== value is because `this` is part of the scope
                            if(key.indexOf('$') && scope !== value && angular.isDefined(value)){
                                options[key] = value;
                            }
                        });

                        renderCircle();
                        renderState(newValue[0], oldValue[0]);
                    });
                },
                template:[
                    '<svg class="round-progress" xmlns="http://www.w3.org/2000/svg">',
                        '<circle fill="none"/>',
                        '<path fill="none"/>',
                    '</svg>'
                ].join('\n')
            });

        }]);
