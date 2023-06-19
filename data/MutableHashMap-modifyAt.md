# modifyAt

Set or remove the specified key in the `MutableHashMap` using the specified
update function.

Part of the `MutableHashMap` module, imported from `@effect/data/MutableHashMap`.

**Signature**

```ts
export declare const modifyAt: {
  <K, V>(key: K, f: (value: Option.Option<V>) => Option.Option<V>): (self: MutableHashMap<K, V>) => MutableHashMap<K, V>
  <K, V>(self: MutableHashMap<K, V>, key: K, f: (value: Option.Option<V>) => Option.Option<V>): MutableHashMap<K, V>
}
```
