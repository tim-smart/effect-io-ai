# diff

Constructs a set patch from a new set of values.

To import and use `diff` from the "HashSetPatch" module:

```ts
import * as HashSetPatch from '@effect/data/Differ/HashSetPatch'

// Can be accessed like this
HashSetPatch.diff
```

**Signature**

```ts
export declare const diff: <Value>(oldValue: HashSet<Value>, newValue: HashSet<Value>) => HashSetPatch<Value>
```
