# combine

Combines two map patches to produce a new map patch that describes
applying their changes sequentially.

To import and use `combine` from the "HashMapPatch" module:

```ts
import * as HashMapPatch from '@effect/data/Differ/HashMapPatch'

// Can be accessed like this
HashMapPatch.combine
```

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
