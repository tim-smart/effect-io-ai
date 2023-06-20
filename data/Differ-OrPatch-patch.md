# patch

Applies an `OrPatch` to a value to produce a new value which represents
the original value updated with the changes described by this patch.

To import and use `patch` from the "OrPatch" module:

```ts
import * as OrPatch from '@effect/data/Differ/OrPatch'

// Can be accessed like this
OrPatch.patch
```

**Signature**

```ts
export declare const patch: {
  <Value, Value2, Patch, Patch2>(
    oldValue: Either<Value, Value2>,
    left: Differ<Value, Patch>,
    right: Differ<Value2, Patch2>
  ): (self: OrPatch<Value, Value2, Patch, Patch2>) => Either<Value, Value2>
  <Value, Value2, Patch, Patch2>(
    self: OrPatch<Value, Value2, Patch, Patch2>,
    oldValue: Either<Value, Value2>,
    left: Differ<Value, Patch>,
    right: Differ<Value2, Patch2>
  ): Either<Value, Value2>
}
```
