# modify

Updates the value of the specified key within the `MutableHashMap` if it exists.

Part of the `MutableHashMap` module, imported from `@effect/data/MutableHashMap`.

**Signature**

```ts
export declare const modify: {
  <K, V>(key: K, f: (v: V) => V): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>
  <K, V>(self: MutableHashMap<K, V>, key: K, f: (v: V) => V): MutableHashMap<K, V>
}
```
