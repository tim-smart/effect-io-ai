## replicateSTMDiscard

Performs this transaction the specified number of times, discarding the
results.

**Signature**

```ts
declare const replicateSTMDiscard: { (n: number): <A, E, R>(self: STM<A, E, R>) => STM<void, E, R>; <A, E, R>(self: STM<A, E, R>, n: number): STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1660)

Since v2.0.0