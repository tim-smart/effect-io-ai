# getSemigroupUnion

A `Semigroup` that creates a union of two records.

This `Semigroup` takes two records and combines them into a single record.
If a key exists in both records, the provided `Semigroup` instance is used to combine the values for that key.
If a key exists in only one of the records, that key-value pair is included as is in the resulting record.

For example, when using the `MonoidSum`, values for matching keys will be summed.

To import and use `getSemigroupUnion` from the "Record" module:

```ts
import * as Record from "@effect/typeclass/data/Record"
// Can be accessed like this
Record.getSemigroupUnion
```

**Example**

```ts
import * as NumberInstances from "@effect/typeclass/data/Number"
import { getSemigroupUnion } from "@effect/typeclass/data/Record"

assert.deepStrictEqual(getSemigroupUnion(NumberInstances.MonoidSum).combine({ a: 1 }, { a: 1, b: 3 }), { a: 2, b: 3 })
```

**Signature**

```ts
export declare const getSemigroupUnion: <A>(
  value: semigroup.Semigroup<A>
) => semigroup.Semigroup<Record.ReadonlyRecord<string, A>>
```