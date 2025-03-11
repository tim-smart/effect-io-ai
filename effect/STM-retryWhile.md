## retryWhile

Filters the value produced by this effect, retrying the transaction while
the predicate returns `true` for the value.

**Signature**

```ts
declare const retryWhile: { <A>(predicate: Predicate<A>): <E, R>(self: STM<A, E, R>) => STM<A, E, R>; <A, E, R>(self: STM<A, E, R>, predicate: Predicate<A>): STM<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1695)

Since v2.0.0