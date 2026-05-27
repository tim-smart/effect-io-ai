Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.Equivalence

An `Equivalence` instance for bigints using strict equality (`===`).

**When to use**

Use when an API needs an `Equivalence` instance for `bigint` equality.

**Example** (Comparing bigints for equivalence)

```ts
import { BigInt } from "effect"

console.log(BigInt.Equivalence(1n, 1n)) // true
console.log(BigInt.Equivalence(1n, 2n)) // false
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L376)

Since v2.0.0