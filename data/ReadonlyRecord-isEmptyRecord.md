# isEmptyRecord

Determine if a `Record` is empty.

To import and use `isEmptyRecord` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from '@effect/data/ReadonlyRecord'

// Can be accessed like this
ReadonlyRecord.isEmptyRecord
```

**Example**

```ts
import { isEmptyRecord } from '@effect/data/ReadonlyRecord'

assert.deepStrictEqual(isEmptyRecord({}), true)
assert.deepStrictEqual(isEmptyRecord({ a: 3 }), false)
```

**Signature**

```ts
export declare const isEmptyRecord: <A>(self: Record<string, A>) => self is Record<string, never>
```
