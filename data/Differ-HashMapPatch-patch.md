# patch

Applies a map patch to a map of keys and values to produce a new map of
keys and values values which represents the original map of keys and
values updated with the changes described by this patch.

Part of the `HashMapPatch` module, imported from `@effect/data/Differ/HashMapPatch`.

**Signature**

```ts
export declare const patch: {
  <Key, Value, Patch>(oldValue: HashMap<Key, Value>, differ: Differ<Value, Patch>): (
    self: HashMapPatch<Key, Value, Patch>
  ) => HashMap<Key, Value>
  <Key, Value, Patch>(
    self: HashMapPatch<Key, Value, Patch>,
    oldValue: HashMap<Key, Value>,
    differ: Differ<Value, Patch>
  ): HashMap<Key, Value>
}
```
