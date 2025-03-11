## every

Determines whether all elements of the `Iterable<A>` satisfy the effectual
predicate.

**Signature**

```ts
declare const every: { <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<boolean, E, R>; <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<boolean, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L544)

Since v2.0.0