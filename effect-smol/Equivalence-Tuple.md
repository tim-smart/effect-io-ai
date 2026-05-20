Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Tuple

Creates an equivalence for tuples with heterogeneous element types.

**When to use**

- Use when comparing tuples with different types at each position
- Use when you need different equivalence logic for each tuple element
- Use when working with fixed-length tuples instead of arrays
- Prefer this over `Array` when you have a known tuple structure with different types

**Details**

- Does not mutate inputs
- Requires tuples to have the same length; different lengths are never equivalent
- Applies each equivalence to the corresponding element position
- Returns `true` only if all elements are equivalent according to their respective equivalences
- The result is also an equivalence that satisfies reflexive, symmetric, and transitive properties

**Example** (Homogeneous tuple equivalence)

```ts
import { Equivalence } from "effect"

const stringTupleEq = Equivalence.Tuple([
  Equivalence.strictEqual<string>(),
  Equivalence.strictEqual<string>(),
  Equivalence.strictEqual<string>()
])

const tuple1 = ["hello", "world", "test"] as const
const tuple2 = ["hello", "world", "test"] as const
const tuple3 = ["hello", "world", "different"] as const

console.log(stringTupleEq(tuple1, tuple2)) // true
console.log(stringTupleEq(tuple1, tuple3)) // false (different third element)
```

**Example** (Tuple with custom equivalences)

```ts
import { Equivalence } from "effect"

const caseInsensitive = Equivalence.mapInput(
  Equivalence.strictEqual<string>(),
  (s: string) => s.toLowerCase()
)

const customTupleEq = Equivalence.Tuple([
  caseInsensitive,
  caseInsensitive,
  caseInsensitive
])

console.log(
  customTupleEq(["Hello", "World", "Test"], ["HELLO", "WORLD", "TEST"])
) // true
```

**See**

- `Array_`
- `Struct`

**Signature**

```ts
declare const Tuple: <const Elements extends ReadonlyArray<Equivalence<any>>>(elements: Elements) => Equivalence<{ readonly [I in keyof Elements]: [Elements[I]] extends [Equivalence<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L593)

Since v4.0.0