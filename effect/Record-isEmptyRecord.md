# isEmptyRecord

Determine if a record is empty.

To import and use `isEmptyRecord` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.isEmptyRecord
undefined

**Example**

```ts
import { isEmptyRecord } from "effect/Record"

assert.deepStrictEqual(isEmptyRecord({}), true)
assert.deepStrictEqual(isEmptyRecord({ a: 3 }), false)
```

**Signature**

```ts
export declare const isEmptyRecord: <K extends string, A>(self: Record<K, A>) => self is Record<K, never>
```
