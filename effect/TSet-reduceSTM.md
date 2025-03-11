## reduceSTM

Atomically folds using a transactional function.

**Signature**

```ts
declare const reduceSTM: { <Z, A, R, E>(zero: Z, f: (accumulator: Z, value: A) => STM.STM<Z, E, R>): (self: TSet<A>) => STM.STM<Z, E, R>; <Z, A, R, E>(self: TSet<A>, zero: Z, f: (accumulator: Z, value: A) => STM.STM<Z, E, R>): STM.STM<Z, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L164)

Since v2.0.0