## transformSTM

Atomically updates all bindings using a transactional function.

**Signature**

```ts
declare const transformSTM: { <K, V, R, E>(f: (key: K, value: V) => STM.STM<readonly [K, V], E, R>): (self: TMap<K, V>) => STM.STM<void, E, R>; <K, V, R, E>(self: TMap<K, V>, f: (key: K, value: V) => STM.STM<readonly [K, V], E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L460)

Since v2.0.0