Package: `effect`<br />
Module: `Number`<br />

## Number.Equivalence

An `Equivalence` instance for numbers.

`NaN` is considered equal to `NaN`.

**Example**

```ts
import { Number } from "effect"

console.log(Number.Equivalence(1, 1)) // true
console.log(Number.Equivalence(1, 2)) // false
console.log(Number.Equivalence(NaN, NaN)) // true
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L225)

Since v4.0.0