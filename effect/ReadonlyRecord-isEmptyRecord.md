# isEmptyRecord

Determine if a record is empty.

To import and use `isEmptyRecord` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.isEmptyRecord
```

**Example**

```ts
import { isEmptyRecord } from "effect/ReadonlyRecord"

assert.deepStrictEqual(isEmptyRecord({}), true)
assert.deepStrictEqual(isEmptyRecord({ a: 3 }), false)
```

**Signature**

```ts
export declare const isEmptyRecord: <K extends string, A>(self: Record<K, A>) => self is Record<K, never>
```
