# separate

Partitions a record of `Either` values into two separate records,
one with the `Left` values and one with the `Right` values.

To import and use `separate` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.separate
undefined

**Example**

```ts
import { Record, Either } from "effect"

assert.deepStrictEqual(Record.separate({ a: Either.left("e"), b: Either.right(1) }), [{ a: "e" }, { b: 1 }])
```

**Signature**

```ts
export declare const separate: <K extends string, A, B>(
  self: ReadonlyRecord<K, Either<B, A>>
) => [Record<ReadonlyRecord.NonLiteralKey<K>, A>, Record<ReadonlyRecord.NonLiteralKey<K>, B>]
```
