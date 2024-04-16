# separate

Partitions a record of `Either` values into two separate records,
one with the `Left` values and one with the `Right` values.

To import and use `separate` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.separate
```

**Example**

```ts
import { separate } from "effect/Record"
import { left, right } from "effect/Either"

assert.deepStrictEqual(separate({ a: left("e"), b: right(1) }), [{ a: "e" }, { b: 1 }])
```

**Signature**

```ts
export declare const separate: <K extends string, A, B>(
  self: ReadonlyRecord<K, Either<B, A>>
) => [Record<ReadonlyRecord.NonLiteralKey<K>, A>, Record<ReadonlyRecord.NonLiteralKey<K>, B>]
```
