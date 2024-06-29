# isReadonlyRecord

A guard that succeeds when the input is a readonly record.

To import and use `isReadonlyRecord` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isReadonlyRecord
```

**Example**

```ts
import { isReadonlyRecord } from "effect/Predicate"

assert.deepStrictEqual(isReadonlyRecord({}), true)
assert.deepStrictEqual(isReadonlyRecord({ a: 1 }), true)

assert.deepStrictEqual(isReadonlyRecord([]), false)
assert.deepStrictEqual(isReadonlyRecord([1, 2, 3]), false)
assert.deepStrictEqual(isReadonlyRecord(null), false)
assert.deepStrictEqual(isReadonlyRecord(undefined), false)
```

**Signature**

```ts
export declare const isReadonlyRecord: (
  input: unknown
) => input is { readonly [x: string]: unknown; readonly [x: symbol]: unknown }
```
