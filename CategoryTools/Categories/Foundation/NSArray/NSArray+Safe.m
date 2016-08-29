//
//  NSArray+Safe.m
//  linlongdemo
//
//  Created by 杜林隆 on 16/8/29.
//  Copyright © 2016年 dulinlong. All rights reserved.
//

#import "NSArray+Safe.h"

@implementation NSArray (Safe)

static inline void AutomaticWritingSwizzleSelector(Class class, SEL originalSelector, SEL swizzledSelector) {
    Method originalMethod = class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
    if (class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod))) {
        class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}

+ (void)load{
    Class arrayClsI = NSClassFromString(@"__NSArrayI");
    
    //安全取值 防止数组越界
    AutomaticWritingSwizzleSelector(arrayClsI, @selector(objectAtIndex:), @selector(safeI_objectAtIndex:));
    
    //安全赋值 防止赋值为nil
    AutomaticWritingSwizzleSelector(arrayClsI, @selector(setObject:atIndex:), @selector(safeI_setObject:atIndex:));
    
    Class arrayCls0 = NSClassFromString(@"__NSArray0");
    
    //安全取值 防止数组越界
    AutomaticWritingSwizzleSelector(arrayCls0, @selector(objectAtIndex:), @selector(safe0_objectAtIndex:));
    
    //安全赋值 防止赋值为nil
    AutomaticWritingSwizzleSelector(arrayCls0, @selector(setObject:atIndex:), @selector(safe0_setObject:atIndex:));
    
}


-(id)safeI_objectAtIndex:(NSUInteger)index{
    if (index <self.count) {
        return [self safeI_objectAtIndex:index];
    }else{
        return nil;
    }
}

- (void)safeI_setObject:(id)anObject atIndex:(NSUInteger)index {
    if (!anObject)
        return;
    [self safeI_setObject:anObject atIndex:index];
}

-(id)safe0_objectAtIndex:(NSUInteger)index{
    if (index <self.count) {
        return [self safe0_objectAtIndex:index];
    }else{
        return nil;
    }
}

- (void)safe0_setObject:(id)anObject atIndex:(NSUInteger)index {
    if (!anObject)
        return;
    [self safe0_setObject:anObject atIndex:index];
}


@end

@implementation NSMutableArray (Safe)

+(void)load{
    Class arrayCls = NSClassFromString(@"__NSArrayM");
    //安全取值 防止数组越界
    AutomaticWritingSwizzleSelector(arrayCls, @selector(objectAtIndex:), @selector(safe_objectAtIndex:));
    
    //安全添加 防止插入nil
    AutomaticWritingSwizzleSelector(arrayCls, @selector(addObject:), @selector(safe_addObject:));
    
    //安全赋值 防止赋值为nil
//     AutomaticWritingSwizzleSelector(arrayCls, @selector(setObject:atIndex:), @selector(safe_setObject:atIndex:));
    
    //安全移除
    AutomaticWritingSwizzleSelector(arrayCls, @selector(removeObjectAtIndex:), @selector(safe_removeObjectAtIndex:));
    

    
}



-(id)safe_objectAtIndex:(NSUInteger)index{
    if (index <self.count) {
        return [self safe_objectAtIndex:index];
    }else{
        return nil;
    }
}

- (void)safe_insertObject:(id)anObject atIndex:(NSUInteger)index{
    if (!anObject)
        return;
    [self safe_insertObject:anObject atIndex:index];
}
- (void)safe_removeLastObject{
    
}
- (void)safe_removeObjectAtIndex:(NSUInteger)index{
    if (index <self.count) {
        return [self safe_removeObjectAtIndex:index];
    }else{
        return;
    }

    
}
- (void)asfe_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject{
    
}



- (void)safe_addObject:(id)anObject{
    if (!anObject)
        return;
    [self safe_addObject:anObject];
}
//- (void)addObjects:(const ObjectType [])objects count:(NSUInteger)count;
//- (void)addObjectsFromArray:(NSArray<ObjectType> *)array;

//- (void)exchangeObjectAtIndex:(NSUInteger)idx1 withObjectAtIndex:(NSUInteger)idx2;
//- (void)moveObjectsAtIndexes:(NSIndexSet *)indexes toIndex:(NSUInteger)idx;
//
//- (void)insertObjects:(NSArray<ObjectType> *)objects atIndexes:(NSIndexSet *)indexes;
//
//- (void)setObject:(ObjectType)obj atIndex:(NSUInteger)idx;
//- (void)setObject:(ObjectType)obj atIndexedSubscript:(NSUInteger)idx NS_AVAILABLE(10_8, 6_0);
//
//- (void)replaceObjectsInRange:(NSRange)range withObjects:(const ObjectType [])objects count:(NSUInteger)count;
//- (void)replaceObjectsAtIndexes:(NSIndexSet *)indexes withObjects:(NSArray<ObjectType> *)objects;
//
//- (void)removeObjectsInRange:(NSRange)range;
//- (void)removeObjectsAtIndexes:(NSIndexSet *)indexes;
//- (void)removeAllObjects;
//
//- (void)removeObject:(ObjectType)object;
//- (void)removeObjectsInArray:(NSArray<ObjectType> *)array;
//
//- (void)intersectOrderedSet:(NSOrderedSet<ObjectType> *)other;
//- (void)minusOrderedSet:(NSOrderedSet<ObjectType> *)other;
//- (void)unionOrderedSet:(NSOrderedSet<ObjectType> *)other;
//
//- (void)intersectSet:(NSSet<ObjectType> *)other;
//- (void)minusSet:(NSSet<ObjectType> *)other;
//- (void)unionSet:(NSSet<ObjectType> *)other;


@end