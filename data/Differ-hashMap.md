# hashMap

Constructs a differ that knows how to diff a `HashMap` of keys and values given
a differ that knows how to diff the values.

Part of the `Differ` module, imported from `@effect/data/Differ`.

**Signature**

```ts
export declare const hashMap: <Key, Value, Patch>(
  differ: Differ<Value, Patch>
) => Differ<HashMap<Key, Value>, HashMapPatch<Key, Value, Patch>>
```
