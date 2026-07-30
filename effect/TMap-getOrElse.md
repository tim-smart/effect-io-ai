Package: `effect`<br />
Module: `TMap`<br />

## TMap.getOrElse

Retrieves value associated with given key or default value, in case the key
isn't present.

**Signature**

```ts
declare const getOrElse: { <K, V>(key: K, fallback: LazyArg<V>): (self: TMap<K, V>) => STM.STM<V>; <K, V>(self: TMap<K, V>, key: K, fallback: LazyArg<V>): STM.STM<V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TMap.ts#L163)

Since v2.0.0