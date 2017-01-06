//
//  CAMediaTimingFunction+Extends.m
//  AXAnimationChain
//
//  Created by devedbox on 2017/1/3.
//  Copyright © 2017年 devedbox. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#import "CAMediaTimingFunction+Extends.h"
#import <objc/runtime.h>

static char * const kFlag="flag";

@implementation CAMediaTimingFunction (Extends)
+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        method_exchangeImplementations(class_getClassMethod(self.class, @selector(functionWithName:)), class_getClassMethod(self.class, @selector(ax_functionWithName:)));
    });
}

+ (instancetype)ax_functionWithName:(NSString *)name {
    id timing = [self ax_functionWithName:name];
    objc_setAssociatedObject(timing, kFlag, name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)defaultTimingFunction {
    return [self functionWithName:kCAMediaTimingFunctionDefault];
}

+ (instancetype)linear {
    return [self functionWithName:kCAMediaTimingFunctionLinear];
}

+ (instancetype)easeIn {
    return [self functionWithName:kCAMediaTimingFunctionEaseIn];
}

+ (instancetype)easeOut {
    return [self functionWithName:kCAMediaTimingFunctionEaseOut];
}

+ (instancetype)easeInOut {
    return [self functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
}

+ (instancetype)easeInSine {
    id timing = [self functionWithControlPoints:0.47 :0 :0.745 :0.715];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutSine {
    id timing = [self functionWithControlPoints:0.39 :0.575 :0.565 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutSine {
    id timing = [self functionWithControlPoints:0.445 :0.05 :0.55 :0.95];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInQuad {
    id timing = [self functionWithControlPoints:0.55 :0.085 :0.68 :0.53];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutQuad {
    id timing = [self functionWithControlPoints:0.25 :0.46 :0.45 :0.94];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutQuad {
    id timing = [self functionWithControlPoints:0.455 :0.03 :0.515 :0.955];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInCubic {
    id timing = [self functionWithControlPoints:0.55 :0.055 :0.675 :0.19];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutCubic {
    id timing = [self functionWithControlPoints:0.215 :0.61 :0.355 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutCubic {
    id timing = [self functionWithControlPoints:0.645 :0.045 :0.355 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInQuart {
    id timing = [self functionWithControlPoints:0.895 :0.03 :0.685 :0.22];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutQuart {
    id timing = [self functionWithControlPoints:0.165 :0.84 :0.44 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutQuart {
    id timing = [self functionWithControlPoints:0.77 :0 :0.175 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInQuint {
    id timing = [self functionWithControlPoints:0.755 :0.05 :0.855 :0.06];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutQuint {
    id timing = [self functionWithControlPoints:0.23 :1 :0.32 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutQuint {
    id timing = [self functionWithControlPoints:0.86 :0 :0.07 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInExpo {
    id timing = [self functionWithControlPoints:0.95 :0.05 :0.795 :0.035];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutExpo {
    id timing = [self functionWithControlPoints:0.19 :1 :0.22 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutExpo {
    id timing = [self functionWithControlPoints:1 :0 :0 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInCirc {
    id timing = [self functionWithControlPoints:0.6 :0.04 :0.98 :0.335];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutCirc {
    id timing = [self functionWithControlPoints:0.075 :0.82 :0.165 :1];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutCirc {
    id timing = [self functionWithControlPoints:0.785 :0.135 :0.15 :0.86];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInBack {
    id timing = [self functionWithControlPoints:0.6 :-0.28 :0.735 :0.045];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeOutBack {
    id timing = [self functionWithControlPoints:0.175 :0.885 :0.32 :1.275];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}

+ (instancetype)easeInOutBack {
    id timing = [self functionWithControlPoints:0.68 :-0.55 :0.265 :1.55];
    objc_setAssociatedObject(timing, kFlag, NSStringFromSelector(_cmd), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return timing;
}
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunsequenced"
static CGPoint AXBezier3ValueWithControlPoints(CGPoint p0, CGPoint p1, CGPoint p2, CGPoint p3, double t) {
    return CGPointMake(p0.x * pow(1-t, 3) + 3 * p1.x * t * pow(1-t, 2) + 3 * p2.x * pow(t, 2) * (1-t) + p3.x * pow(t, 3), p0.y * pow(1-t, 3) + 3 * p1.y * t * pow(1-t, 2) + 3 * p2.y * pow(t, 2) * (1-t) + p3.y * pow(t, 3));
}
/// Params:
/// t the current time.
/// b the begin value.
/// c the delta value.
/// d the total time.
- (double (^)(double, double, double, double))valuesFuntion {
    NSString *flag = objc_getAssociatedObject(self, kFlag);
    if (!flag) return NULL;
    if ([flag isEqualToString:kCAMediaTimingFunctionDefault]) {
        return ^double (double t, double b, double c, double d) {
            return AXBezier3ValueWithControlPoints(CGPointMake(.0, .0), CGPointMake(0.25, 0.1), CGPointMake(0.25, 1.0), CGPointMake(1.0, 1.0), t/d).y*(c-b)+b;
        };
    } else if ([flag isEqualToString:kCAMediaTimingFunctionLinear]) {
        return ^double (double t, double b, double c, double d) {
            return c*(t/=d) + b;
        };
    } else if ([flag isEqualToString:kCAMediaTimingFunctionEaseIn]) {
        return ^double (double t, double b, double c, double d) {
            return AXBezier3ValueWithControlPoints(CGPointMake(.0, .0), CGPointMake(0.42, .0), CGPointMake(1.0, 1.0), CGPointMake(1.0, 1.0), t/d).y*(c-b)+b;
        };
    } else if ([flag isEqualToString:kCAMediaTimingFunctionEaseOut]) {
        return ^double (double t, double b, double c, double d) {
            return AXBezier3ValueWithControlPoints(CGPointMake(.0, .0), CGPointMake(.0, .0), CGPointMake(.58, 1.0), CGPointMake(1.0, 1.0), t/d).y*(c-b)+b;
        };
    } else if ([flag isEqualToString:kCAMediaTimingFunctionEaseInEaseOut]) {
        return ^double (double t, double b, double c, double d) {
            return AXBezier3ValueWithControlPoints(CGPointMake(.0, .0), CGPointMake(0.42, .0), CGPointMake(.58, 1.0), CGPointMake(1.0, 1.0), t/d).y*(c-b)+b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInSine))]) {
        return ^double (double t, double b, double c, double d) {
            return -c * cos(t/d * (M_PI_2)) + c + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutSine))]) {
        return ^double (double t, double b, double c, double d) {
            return c * sin(t/d * (M_PI_2)) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutSine))]) {
        return ^double (double t, double b, double c, double d) {
            return -c/2 * (cos(M_PI*t/d) - 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInQuad))]) {
        return ^double (double t, double b, double c, double d) {
            return c*(t/=d)*t + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutQuad))]) {
        return ^double (double t, double b, double c, double d) {
            return -c *(t/=d)*(t-2) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutQuad))]) {
        return ^double (double t, double b, double c, double d) {
            return -c *(t/=d)*(t-2) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInCubic))]) {
        return ^double (double t, double b, double c, double d) {
            return c*(t/=d)*t*t + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutCubic))]) {
        return ^double (double t, double b, double c, double d) {
            return c*((t=t/d-1)*t*t + 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutCubic))]) {
        return ^double (double t, double b, double c, double d) {
            if ((t/=d/2) < 1) return c/2*t*t*t + b;
            return c/2*((t-=2)*t*t + 2) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInQuart))]) {
        return ^double (double t, double b, double c, double d) {
            return c*(t/=d)*t*t*t + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutQuart))]) {
        return ^double (double t, double b, double c, double d) {
            return -c * ((t=t/d-1)*t*t*t - 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutQuart))]) {
        return ^double (double t, double b, double c, double d) {
            if ((t/=d/2) < 1) return c/2*t*t*t*t + b;
            return -c/2 * ((t-=2)*t*t*t - 2) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInQuint))]) {
        return ^double (double t, double b, double c, double d) {
            return c*(t/=d)*t*t*t*t + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutQuint))]) {
        return ^double (double t, double b, double c, double d) {
            return c*((t=t/d-1)*t*t*t*t + 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutQuint))]) {
        return ^double (double t, double b, double c, double d) {
            if ((t/=d/2) < 1) return c/2*t*t*t*t*t + b;
            return c/2*((t-=2)*t*t*t*t + 2) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInExpo))]) {
        return ^double (double t, double b, double c, double d) {
            return (t==0) ? b : c * pow(2, 10 * (t/d - 1)) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutExpo))]) {
        return ^double (double t, double b, double c, double d) {
            return (t==d) ? b+c : c * (-pow(2, -10 * t/d) + 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutExpo))]) {
        return ^double (double t, double b, double c, double d) {
            if (t==0) return b;
            if (t==d) return b+c;
            if ((t/=d/2) < 1) return c/2 * pow(2, 10 * (t - 1)) + b;
            return c/2 * (-pow(2, -10 * --t) + 2) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInCirc))]) {
        return ^double (double t, double b, double c, double d) {
            return -c * (sqrt(1 - (t/=d)*t) - 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutCirc))]) {
        return ^double (double t, double b, double c, double d) {
            return c * sqrt(1 - (t=t/d-1)*t) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutCirc))]) {
        return ^double (double t, double b, double c, double d) {
            if ((t/=d/2) < 1) return -c/2 * (sqrt(1 - t*t) - 1) + b;
            return c/2 * (sqrt(1 - (t-=2)*t) + 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInBack))]) {
        return ^double (double t, double b, double c, double d) {
            const double s = 1.70158;
            return c*(t/=d)*t*((s+1)*t - s) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeOutBack))]) {
        return ^double (double t, double b, double c, double d) {
            const double s = 1.70158;
            return c*((t=t/d-1)*t*((s+1)*t + s) + 1) + b;
        };
    } else if ([flag isEqualToString:NSStringFromSelector(@selector(easeInOutBack))]) {
        return ^double (double t, double b, double c, double d) {
            double s = 1.70158;
            if ((t/=d/2) < 1) return c/2*(t*t*(((s*=(1.525))+1)*t - s)) + b;
            return c/2*((t-=2)*t*(((s*=(1.525))+1)*t + s) + 2) + b;
        };
    } else return NULL;
}

- (double (^)(double, double, double, double))easeInElasticValuesFuntion {
    return ^double (double t, double b, double c, double d) {
        double s = 1.70158; double p=0; double a=c;
        
        if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
        if (a < fabs(c)) { a=c; s=p/4; }
        else s = p/(2*M_PI) * asin (c/a);
        return -(a*pow(2,10*(t-=1)) * sin( (t*d-s)*(2*M_PI)/p )) + b;
    };
}

- (double (^)(double, double, double, double))easeOutElasticValuesFuntion {
    return ^double (double t, double b, double c, double d) {
        double s=1.70158, p=0, a=c;
        if (t==0) return b;  if ((t/=d)==1) return b+c;  if (!p) p=d*.3;
        if (a < fabs(c)) { a=c; s=p/4; }
        else s = p/(2*M_PI) * asin (c/a);
        return a*pow(2,-10*t) * sin( (t*d-s)*(2*M_PI)/p ) + c + b;
    };
}

- (double (^)(double, double, double, double))easeInOutElasticValuesFuntion {
    return ^double (double t, double b, double c, double d) {
        double s=1.70158, p=0, a=c;
        if (t==0) return b;  if ((t/=d/2)==2) return b+c;  if (!p) p=d*(.3*1.5);
        if (a < fabs(c)) { a=c; s=p/4; }
        else s = p/(2*M_PI) * asin(c/a);
        if (t < 1) return -.5*(a*pow(2,10*(t-=1)) * sin( (t*d-s)*(2*M_PI)/p )) + b;
        return a*pow(2,-10*(t-=1)) * sin( (t*d-s)*(2*M_PI)/p )*.5 + c + b;
    };
}

- (double (^)(double, double, double, double))easeInBounceValuesFuntion {
    return ^double (double t, double b, double c, double d) {
        return c - [self easeOutBounceValuesFuntion](d-t, 0, c, d) + b;
    };
}

- (double (^)(double, double, double, double))easeOutBounceValuesFuntion {
    return ^double (double t, double b, double c, double d) {
        if ((t/=d) < (1/2.75)) {
            return c*(7.5625*t*t) + b;
        } else if (t < (2/2.75)) {
            return c*(7.5625*(t-=(1.5/2.75))*t + .75) + b;
        } else if (t < (2.5/2.75)) {
            return c*(7.5625*(t-=(2.25/2.75))*t + .9375) + b;
        } else {
            return c*(7.5625*(t-=(2.625/2.75))*t + .984375) + b;
        }
    };
}

- (double (^)(double, double, double, double))easeInOutBounceValuesFuntion {
    return ^double (double t, double b, double c, double d) {
        if (t < d/2)
            return [self easeInBounceValuesFuntion](t*2, 0, c, d) * .5 + b;
        else
            return [self easeOutBounceValuesFuntion](t*2-d, 0, c, d) * .5 + c*.5 + b;
    };
}
#pragma clang diagnostic pop
@end