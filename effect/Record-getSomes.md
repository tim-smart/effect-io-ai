# getSomes

Given a record with `Option` values, returns a new record containing only the `Some` values, preserving the original keys.

To import and use `getSomes` from the "Record" module:

```ts
import * as Record from "effect/Record"
// Can be accessed like this
Record.getSomes
```

**Example**

```ts
import { getSomes } from "effect/Record"
import { some, none } from "effect/Option"

assert.deepStrictEqual(getSomes({ a: some(1), b: none(), c: some(2) }), { a: 1, c: 2 })
```

**Signature**

```ts
export declare const getSomes: <K extends string, A>(
  self: ReadonlyRecord<K, Option.Option<A>>
) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
```
