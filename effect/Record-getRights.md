# getRights

Given a record with `Either` values, returns a new record containing only the `Right` values, preserving the original keys.

To import and use `getRights` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.getRights
undefined

**Example**

```ts
import { Record, Either } from "effect"

assert.deepStrictEqual(Record.getRights({ a: Either.right(1), b: Either.left("err"), c: Either.right(2) }), {
  a: 1,
  c: 2
})
```

**Signature**

```ts
export declare const getRights: <K extends string, R, L>(self: ReadonlyRecord<K, Either<R, L>>) => Record<string, R>
```
