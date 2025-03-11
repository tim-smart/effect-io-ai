## reduceSTM

Atomically folds using a transactional function.

**Signature**

```ts
declare const reduceSTM: { <Z, A, R, E>(zero: Z, f: (accumulator: Z, current: A) => STM.STM<Z, E, R>): (self: TArray<A>) => STM.STM<Z, E, R>; <Z, A, R, E>(self: TArray<A>, zero: Z, f: (accumulator: Z, current: A) => STM.STM<Z, E, R>): STM.STM<Z, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L408)

Since v2.0.0