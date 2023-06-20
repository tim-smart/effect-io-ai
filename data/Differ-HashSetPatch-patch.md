# patch

Applies a set patch to a set of values to produce a new set of values
which represents the original set of values updated with the changes
described by this patch.

To import and use `patch` from the "HashSetPatch" module:

```ts
import * as HashSetPatch from '@effect/data/Differ/HashSetPatch'

// Can be accessed like this
HashSetPatch.patch
```

**Signature**

```ts
export declare const patch: {
  <Value>(oldValue: HashSet<Value>): (self: HashSetPatch<Value>) => HashSet<Value>
  <Value>(self: HashSetPatch<Value>, oldValue: HashSet<Value>): HashSet<Value>
}
```
