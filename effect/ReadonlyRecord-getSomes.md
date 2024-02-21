# getSomes

Given a record with `Option` values, returns a new record containing only the `Some` values, preserving the original keys.

To import and use `getSomes` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.getSomes
```

**Example**

```ts
import { getSomes } from "effect/ReadonlyRecord"
import { some, none } from "effect/Option"

assert.deepStrictEqual(getSomes({ a: some(1), b: none(), c: some(2) }), { a: 1, c: 2 })
```

**Signature**

```ts
export declare const getSomes: <K extends string, A>(
  self: ReadonlyRecord<K, Option.Option<A>>
) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
```
