Package: `effect`<br />
Module: `TMap`<br />

## TMap.forEach

Atomically performs transactional-effect for each binding present in map.

**Signature**

```ts
declare const forEach: { <K, V, X, E, R>(f: (key: K, value: V) => STM.STM<X, E, R>): (self: TMap<K, V>) => STM.STM<void, E, R>; <K, V, X, E, R>(self: TMap<K, V>, f: (key: K, value: V) => STM.STM<X, E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L130)

Since v2.0.0