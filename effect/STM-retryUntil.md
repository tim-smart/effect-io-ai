## retryUntil

Filters the value produced by this effect, retrying the transaction until
the predicate returns `true` for the value.

**Signature**

```ts
declare const retryUntil: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E, R>(self: STM<A, E, R>) => STM<B, E, R>; <A>(predicate: Predicate<A>): <E, R>(self: STM<A, E, R>) => STM<A, E, R>; <A, E, R, B extends A>(self: STM<A, E, R>, refinement: Refinement<A, B>): STM<B, E, R>; <A, E, R>(self: STM<A, E, R>, predicate: Predicate<A>): STM<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1681)

Since v2.0.0