# isEmptyReadonlyRecord

Determine if a record is empty.

To import and use `isEmptyReadonlyRecord` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.isEmptyReadonlyRecord
```

**Example**

```ts
import { isEmptyReadonlyRecord } from "effect/ReadonlyRecord"

assert.deepStrictEqual(isEmptyReadonlyRecord({}), true)
assert.deepStrictEqual(isEmptyReadonlyRecord({ a: 3 }), false)
```

**Signature**

```ts
export declare const isEmptyReadonlyRecord: <K extends string, A>(
  self: ReadonlyRecord<K, A>
) => self is ReadonlyRecord<K, never>
```
