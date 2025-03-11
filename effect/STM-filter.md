## filter

Filters the collection using the specified effectual predicate.

**Signature**

```ts
declare const filter: { <A, R, E>(predicate: (a: NoInfer<A>) => STM<boolean, E, R>): (iterable: Iterable<A>) => STM<Array<A>, E, R>; <A, R, E>(iterable: Iterable<A>, predicate: (a: A) => STM<boolean, E, R>): STM<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L591)

Since v2.0.0