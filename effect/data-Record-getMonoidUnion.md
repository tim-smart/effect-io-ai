# getMonoidUnion

A `Monoid` that creates a union of two records.

It allows combining two records where values for matching keys are combined using the provided `Monoid` instance.
If a key exists in only one of the records, that key-value pair is included as is in the resulting record.

The `empty` value for this `Monoid` is an empty record `{}`.

To import and use `getMonoidUnion` from the "Record" module:

```ts
import * as Record from "@effect/typeclass/data/Record"
// Can be accessed like this
Record.getMonoidUnion
```

**Example**

```ts
import * as NumberInstances from "@effect/typeclass/data/Number"
import { getMonoidUnion } from "@effect/typeclass/data/Record"

const monoid = getMonoidUnion(NumberInstances.MonoidSum)

assert.deepStrictEqual(monoid.combine({ a: 1 }, { a: 1, b: 3 }), { a: 2, b: 3 })
assert.deepStrictEqual(monoid.combine({ a: 1 }, monoid.empty), { a: 1 })
```

**Signature**

```ts
export declare const getMonoidUnion: <A>(value: monoid.Monoid<A>) => monoid.Monoid<Record.ReadonlyRecord<string, A>>
```
