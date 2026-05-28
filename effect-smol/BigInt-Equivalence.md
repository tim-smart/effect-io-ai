Package: `effect`<br />
Module: `BigInt`<br />

## BigInt.Equivalence

Equivalence instance for bigints using strict equality (`===`).

**When to use**

Use when checking bigint equality through APIs that accept an equivalence
relation.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigInt.ts#L378)

Since v2.0.0