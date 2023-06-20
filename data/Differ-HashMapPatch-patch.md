# patch

Applies a map patch to a map of keys and values to produce a new map of
keys and values values which represents the original map of keys and
values updated with the changes described by this patch.

To import and use `patch` from the "HashMapPatch" module:

```ts
import * as HashMapPatch from '@effect/data/Differ/HashMapPatch'

// Can be accessed like this
HashMapPatch.patch
```

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
