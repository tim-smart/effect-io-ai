Package: `@effect/typeclass`<br />
Module: `Record`<br />

## Record.getMonoidUnion

A `Monoid` that creates a union of two records.

It allows combining two records where values for matching keys are combined using the provided `Monoid` instance.
If a key exists in only one of the records, that key-value pair is included as is in the resulting record.

The `empty` value for this `Monoid` is an empty record `{}`.

**Example**

```ts
import * as assert from "node:assert"
import * as NumberInstances from "@effect/typeclass/data/Number"
import { getMonoidUnion } from "@effect/typeclass/data/Record"

const monoid = getMonoidUnion(NumberInstances.MonoidSum)

assert.deepStrictEqual(monoid.combine({ a: 1 }, { a: 1, b: 3 }), { a: 2, b: 3 })
assert.deepStrictEqual(monoid.combine({ a: 1 }, monoid.empty), { a: 1 })
```

**Signature**

```ts
declare const getMonoidUnion: <A>(value: monoid.Monoid<A>) => monoid.Monoid<Record.ReadonlyRecord<string, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Record.ts#L256)

Since v0.29.4