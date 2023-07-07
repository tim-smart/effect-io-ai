# diff

Constructs an `OrPatch` from a new and old value and a differ for the
values.

To import and use `diff` from the "OrPatch" module:

```ts
import * as OrPatch from '@effect/data/Differ/OrPatch'

// Can be accessed like this
OrPatch.diff
```

**Signature**

```ts
export declare const diff: <Value, Value2, Patch, Patch2>(options: {
  readonly oldValue: Either<Value, Value2>
  readonly newValue: Either<Value, Value2>
  readonly left: Differ<Value, Patch>
  readonly right: Differ<Value2, Patch2>
}) => OrPatch<Value, Value2, Patch, Patch2>
```
