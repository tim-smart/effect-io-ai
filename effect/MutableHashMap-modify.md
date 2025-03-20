Package: `effect`<br />
Module: `MutableHashMap`<br />

## MutableHashMap.modify

Updates the value of the specified key within the `MutableHashMap` if it exists.

**Signature**

```ts
declare const modify: { <K, V>(key: K, f: (v: V) => V): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>; <K, V>(self: MutableHashMap<K, V>, key: K, f: (v: V) => V): MutableHashMap<K, V>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableHashMap.ts#L270)

Since v2.0.0