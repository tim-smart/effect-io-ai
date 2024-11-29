# getSomes

Given a record with `Option` values, returns a new record containing only the `Some` values, preserving the original keys.

To import and use `getSomes` from the "Record" module:

ts
import \* as Record from "effect/Record"
// Can be accessed like this
Record.getSomes
undefined

**Example**

```ts
import { Record, Option } from "effect"

assert.deepStrictEqual(Record.getSomes({ a: Option.some(1), b: Option.none(), c: Option.some(2) }), { a: 1, c: 2 })
```

**Signature**

```ts
export declare const getSomes: <K extends string, A>(
  self: ReadonlyRecord<K, Option.Option<A>>
) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
```
