Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.tuple

Combines an array of predicates into a single predicate that tests an array of values.
This function is highly type-aware and will produce a `Refinement` if any of the provided
predicates are `Refinement`s, allowing for powerful type-narrowing of tuples.

- If all predicates are `Predicate<T>`, the result is `Predicate<[T, T, ...]>`.
- If any predicate is a `Refinement<A, B>`, the result is a `Refinement` that narrows
  the input tuple type to a more specific tuple type.

**Example**

```ts
import * as assert from "node:assert"
import { Predicate } from "effect"

const isString = (u: unknown): u is string => typeof u === "string"
const isNumber = (u: unknown): u is number => typeof u === "number"

// Create a refinement for a [string, number] tuple
const isStringNumberTuple = Predicate.tuple(isString, isNumber)

const value: [unknown, unknown] = ["hello", 123]
if (isStringNumberTuple(value)) {
  // value is narrowed to [string, number]
  const [s, n] = value
  assert.strictEqual(s.toUpperCase(), "HELLO")
  assert.strictEqual(n.toFixed(2), "123.00")
}
assert.strictEqual(isStringNumberTuple(["hello", "123"]), false)
```

**Signature**

```ts
declare const tuple: <T extends ReadonlyArray<Predicate.Any>>(...elements: T) => [Extract<T[number], Refinement.Any>] extends [never] ? Predicate<{ readonly [I in keyof T]: Predicate.In<T[I]>; }> : Refinement<{ readonly [I in keyof T]: T[I] extends Refinement.Any ? Refinement.In<T[I]> : Predicate.In<T[I]>; }, { readonly [I in keyof T]: T[I] extends Refinement.Any ? Refinement.Out<T[I]> : Predicate.In<T[I]>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L1018)

Since v2.0.0