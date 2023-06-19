# diff

Constructs a map patch from a new and old map of keys and values and a
differ for the values.

Part of the `HashMapPatch` module, imported from `@effect/data/Differ/HashMapPatch`.

**Signature**

```ts
export declare const diff: <Key, Value, Patch>(
  oldValue: HashMap<Key, Value>,
  newValue: HashMap<Key, Value>,
  differ: Differ<Value, Patch>
) => HashMapPatch<Key, Value, Patch>
```
