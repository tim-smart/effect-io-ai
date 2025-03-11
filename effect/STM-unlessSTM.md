## unlessSTM

The moral equivalent of `if (!p) exp` when `p` has side-effects

**Signature**

```ts
declare const unlessSTM: { <E2, R2>(predicate: STM<boolean, E2, R2>): <A, E, R>(self: STM<A, E, R>) => STM<Option.Option<A>, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: STM<A, E, R>, predicate: STM<boolean, E2, R2>): STM<Option.Option<A>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1843)

Since v2.0.0