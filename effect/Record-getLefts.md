# getLefts

Given a record with `Either` values, returns a new record containing only the `Left` values, preserving the original keys.

To import and use `getLefts` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.getLefts
```

**Example**

```ts
import { getLefts } from "effect/Record"
import { right, left } from "effect/Either"

assert.deepStrictEqual(getLefts({ a: right(1), b: left("err"), c: right(2) }), { b: "err" })
```

**Signature**

```ts
export declare const getLefts: <K extends string, R, L>(
  self: ReadonlyRecord<K, Either<R, L>>
) => Record<ReadonlyRecord.NonLiteralKey<K>, L>
```
