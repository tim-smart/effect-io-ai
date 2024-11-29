# getSemigroupIntersection

A `Semigroup` that creates an intersection of two records.

This `Semigroup` takes two records and combines them into a new record containing only the keys that are present in both records.
The values for matching keys are combined using the provided `Semigroup` instance.

To import and use `getSemigroupIntersection` from the "Record" module:

```ts
import * as Record from "@effect/typeclass/data/Record"
// Can be accessed like this
Record.getSemigroupIntersection
```

**Example**

```ts
import * as NumberInstances from "@effect/typeclass/data/Number"
import { getSemigroupIntersection } from "@effect/typeclass/data/Record"

assert.deepStrictEqual(getSemigroupIntersection(NumberInstances.MonoidSum).combine({ a: 1 }, { a: 1, b: 3 }), { a: 2 })
```

**Signature**

```ts
export declare const getSemigroupIntersection: <A>(
  value: semigroup.Semigroup<A>
) => semigroup.Semigroup<Record.ReadonlyRecord<string, A>>
```
