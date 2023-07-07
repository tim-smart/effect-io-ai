# diff

Constructs a map patch from a new and old map of keys and values and a
differ for the values.

To import and use `diff` from the "HashMapPatch" module:

```ts
import * as HashMapPatch from '@effect/data/Differ/HashMapPatch'

// Can be accessed like this
HashMapPatch.diff
```

**Signature**

```ts
export declare const diff: <Key, Value, Patch>(options: {
  readonly oldValue: HashMap<Key, Value>
  readonly newValue: HashMap<Key, Value>
  readonly differ: Differ<Value, Patch>
}) => HashMapPatch<Key, Value, Patch>
```
