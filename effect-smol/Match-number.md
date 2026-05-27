Package: `effect`<br />
Module: `Match`<br />

## Match.number

Matches values of type `number`.

**When to use**

Use to match primitive number values, including `NaN` and infinities.

**Details**

This predicate refines unknown values to numbers, allowing pattern matching
on numeric types. It matches all number values including integers, floats,
`Infinity`, `-Infinity`, and `NaN`.

**Example** (Matching number values)

```ts
import { Match } from "effect"

const categorizeNumber = Match.type<unknown>().pipe(
  Match.when(Match.number, (num) => {
    if (Number.isNaN(num)) return "Not a number"
    if (!Number.isFinite(num)) return "Infinite"
    if (Number.isInteger(num)) return `Integer: ${num}`
    return `Float: ${num.toFixed(2)}`
  }),
  Match.orElse(() => "Not a number type")
)

console.log(categorizeNumber(42)) // "Integer: 42"
console.log(categorizeNumber(3.14)) // "Float: 3.14"
console.log(categorizeNumber(NaN)) // "Not a number"
console.log(categorizeNumber("hello")) // "Not a number type"
```

**See**

- `bigint` for matching primitive bigint values

**Signature**

```ts
declare const number: Predicate.Refinement<unknown, number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1367)

Since v4.0.0