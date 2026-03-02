Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Number

An `Equivalence` instance for numbers.

`NaN` is considered equal to `NaN`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L275)

Since v4.0.0