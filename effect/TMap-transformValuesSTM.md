## transformValuesSTM

Atomically updates all values using a transactional function.

**Signature**

```ts
declare const transformValuesSTM: { <V, R, E>(f: (value: V) => STM.STM<V, E, R>): <K>(self: TMap<K, V>) => STM.STM<void, E, R>; <K, V, R, E>(self: TMap<K, V>, f: (value: V) => STM.STM<V, E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L482)

Since v2.0.0