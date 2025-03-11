## setIfAbsent

Stores new binding in the map if it does not already exist.

**Signature**

```ts
declare const setIfAbsent: { <K, V>(key: K, value: V): (self: TMap<K, V>) => STM.STM<void>; <K, V>(self: TMap<K, V>, key: K, value: V): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L349)

Since v2.0.0