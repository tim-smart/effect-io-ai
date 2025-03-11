## reduceSTM

Atomically folds using a transactional function.

**Signature**

```ts
declare const reduceSTM: { <Z, V, K, R, E>(zero: Z, f: (acc: Z, value: V, key: K) => STM.STM<Z, E, R>): (self: TMap<K, V>) => STM.STM<Z, E, R>; <Z, V, K, R, E>(self: TMap<K, V>, zero: Z, f: (acc: Z, value: V, key: K) => STM.STM<Z, E, R>): STM.STM<Z, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L233)

Since v2.0.0