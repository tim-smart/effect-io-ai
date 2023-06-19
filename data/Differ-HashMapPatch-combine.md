# combine

Combines two map patches to produce a new map patch that describes
applying their changes sequentially.

Part of the `HashMapPatch` module, imported from `@effect/data/Differ/HashMapPatch`.

**Signature**

```ts
export declare const combine: {
  <Key, Value, Patch>(that: HashMapPatch<Key, Value, Patch>): (
    self: HashMapPatch<Key, Value, Patch>
  ) => HashMapPatch<Key, Value, Patch>
  <Key, Value, Patch>(self: HashMapPatch<Key, Value, Patch>, that: HashMapPatch<Key, Value, Patch>): HashMapPatch<
    Key,
    Value,
    Patch
  >
}
```
