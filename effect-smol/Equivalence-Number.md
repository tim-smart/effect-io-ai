Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Number

An `Equivalence` instance for numbers.

**When to use**

Use when an API needs an `Equivalence` instance for numeric equality where
`NaN` equals `NaN`.

**Details**

`NaN` is considered equal to `NaN`.

**Example** (Comparing numbers)

```ts
import { Equivalence } from "effect"

console.log(Equivalence.Number(1, 1)) // true
console.log(Equivalence.Number(1, 2)) // false
console.log(Equivalence.Number(NaN, NaN)) // true
```

**Signature**

```ts
declare const Number: Equivalence<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L298)

Since v4.0.0