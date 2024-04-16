# getRights

Given a record with `Either` values, returns a new record containing only the `Right` values, preserving the original keys.

To import and use `getRights` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.getRights
```

**Example**

```ts
import { getRights } from "effect/Record"
import { right, left } from "effect/Either"

assert.deepStrictEqual(getRights({ a: right(1), b: left("err"), c: right(2) }), { a: 1, c: 2 })
```

**Signature**

```ts
export declare const getRights: <K extends string, R, L>(self: ReadonlyRecord<K, Either<R, L>>) => Record<string, R>
```
