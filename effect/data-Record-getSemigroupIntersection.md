Package: `@effect/typeclass`<br />
Module: `Record`<br />

## Record.getSemigroupIntersection

A `Semigroup` that creates an intersection of two records.

This `Semigroup` takes two records and combines them into a new record containing only the keys that are present in both records.
The values for matching keys are combined using the provided `Semigroup` instance.

**Example**

```ts
import * as NumberInstances from "@effect/typeclass/data/Number"
import { getSemigroupIntersection } from "@effect/typeclass/data/Record"

console.log(getSemigroupIntersection(NumberInstances.MonoidSum).combine({ a: 1 }, { a: 1, b: 3 }))
// { a: 2 }
```

**Signature**

```ts
declare const getSemigroupIntersection: <A>(value: semigroup.Semigroup<A>) => semigroup.Semigroup<Record.ReadonlyRecord<string, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Record.ts#L284)

Since v0.29.4