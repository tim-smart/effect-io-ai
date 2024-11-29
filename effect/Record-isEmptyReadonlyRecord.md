# isEmptyReadonlyRecord

Determine if a record is empty.

To import and use `isEmptyReadonlyRecord` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.isEmptyReadonlyRecord
undefined

**Example**

```ts
import { isEmptyReadonlyRecord } from "effect/Record"

assert.deepStrictEqual(isEmptyReadonlyRecord({}), true)
assert.deepStrictEqual(isEmptyReadonlyRecord({ a: 3 }), false)
```

**Signature**

```ts
export declare const isEmptyReadonlyRecord: <K extends string, A>(
  self: ReadonlyRecord<K, A>
) => self is ReadonlyRecord<K, never>
```
