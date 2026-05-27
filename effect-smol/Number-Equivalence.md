Package: `effect`<br />
Module: `Number`<br />

## Number.Equivalence

An `Equivalence` instance for numbers where `NaN` is considered equal to `NaN`.

**When to use**

Use when an API needs an `Equivalence` instance for numeric equality.

**Example** (Comparing numbers for equivalence)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L345)

Since v2.0.0