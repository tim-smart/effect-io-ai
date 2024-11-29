# filterMap

Transforms a record into a record by applying the function `f` to each key and value in the original record.
If the function returns `Some`, the key-value pair is included in the output record.

To import and use `filterMap` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.filterMap
undefined

**Example**

```ts
import { Record, Option } from "effect"

const x = { a: 1, b: 2, c: 3 }
const f = (a: number, key: string) => (a > 2 ? Option.some(a * 2) : Option.none())
assert.deepStrictEqual(Record.filterMap(x, f), { c: 6 })
```

**Signature**

```ts
export declare const filterMap: {
  <K extends string, A, B>(
    f: (a: A, key: K) => Option.Option<B>
  ): (self: ReadonlyRecord<K, A>) => Record<ReadonlyRecord.NonLiteralKey<K>, B>
  <K extends string, A, B>(
    self: ReadonlyRecord<K, A>,
    f: (a: A, key: K) => Option.Option<B>
  ): Record<ReadonlyRecord.NonLiteralKey<K>, B>
}
```
