# patch

Applies a patch to an old value to produce a new value that is equal to the
old value with the updates described by the patch.

To import and use `patch` from the "Differ" module:

```ts
import * as Differ from 'effect/Differ'

// Can be accessed like this
Differ.patch
```

**Signature**

```ts
export declare const patch: {
  <Patch, Value>(patch: Patch, oldValue: Value): (self: Differ<Value, Patch>) => Value
  <Patch, Value>(self: Differ<Value, Patch>, patch: Patch, oldValue: Value): Value
}
```
