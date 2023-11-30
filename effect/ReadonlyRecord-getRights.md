# getRights

Given a record with `Either` values, returns a new record containing only the `Right` values, preserving the original keys.

To import and use `getRights` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.getRights
```

**Example**

```ts
import { getRights } from "effect/ReadonlyRecord"
import { right, left } from "effect/Either"

assert.deepStrictEqual(getRights({ a: right(1), b: left("err"), c: right(2) }), { a: 1, c: 2 })
```

**Signature**

```ts
export declare const getRights: <E, A>(self: ReadonlyRecord<Either<E, A>>) => Record<string, A>
```
