Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.struct

Combines a record of predicates into a single predicate that tests a record of values.
This function is highly type-aware and will produce a `Refinement` if any of the provided
predicates are `Refinement`s, allowing for powerful type-narrowing of structs.

- If all predicates are `Predicate<T>`, the result is `Predicate<{ k: T, ... }>`.
- If any predicate is a `Refinement<A, B>`, the result is a `Refinement` that narrows
  the input record type to a more specific record type.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const isString = (u: unknown): u is string => typeof u === "string"
const isNumber = (u: unknown): u is number => typeof u === "number"

const personPredicate = Predicate.struct({
  name: isString,
  age: isNumber
})

const value: { name: unknown; age: unknown } = { name: "Alice", age: 30 }
if (personPredicate(value)) {
  // value is narrowed to { name: string; age: number }
  assert.strictEqual(value.name.toUpperCase(), "ALICE")
  assert.strictEqual(value.age.toFixed(0), "30")
}
assert.strictEqual(personPredicate({ name: "Bob", age: "40" }), false)
```

**Signature**

```ts
declare const struct: <R extends Record<string, Predicate.Any>>(fields: R) => [Extract<R[keyof R], Refinement.Any>] extends [never] ? Predicate<{ readonly [K in keyof R]: Predicate.In<R[K]>; }> : Refinement<{ readonly [K in keyof R]: R[K] extends Refinement.Any ? Refinement.In<R[K]> : Predicate.In<R[K]>; }, { readonly [K in keyof R]: R[K] extends Refinement.Any ? Refinement.Out<R[K]> : Predicate.In<R[K]>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1061)

Since v2.0.0