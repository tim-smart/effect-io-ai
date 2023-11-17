# isRecord

A guard that succeeds when the input is a record.

To import and use `isRecord` from the "Predicate" module:

```ts
import * as Predicate from "effect/Predicate"
// Can be accessed like this
Predicate.isRecord
```

**Example**

```ts
import { isRecord } from "effect/Predicate"

assert.deepStrictEqual(isRecord({}), true)
assert.deepStrictEqual(isRecord({ a: 1 }), true)

assert.deepStrictEqual(isRecord([]), false)
assert.deepStrictEqual(isRecord([1, 2, 3]), false)
assert.deepStrictEqual(isRecord(null), false)
assert.deepStrictEqual(isRecord(undefined), false)
assert.deepStrictEqual(
  isRecord(() => null),
  false
)
```

**Signature**

```ts
export declare const isRecord: (input: unknown) => input is { [x: string]: unknown; [x: symbol]: unknown }
```
