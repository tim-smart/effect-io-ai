Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Number

An `Equivalence` instance for numbers.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L289)

Since v4.0.0