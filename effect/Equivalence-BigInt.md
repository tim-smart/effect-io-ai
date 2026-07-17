Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.BigInt

Equivalence instance for bigints using strict equality (`===`).

**When to use**

Use when you need to supply bigint equality.

**Example** (Comparing bigints)

```ts
import { Equivalence } from "effect"

console.log(Equivalence.BigInt(1n, 1n)) // true
console.log(Equivalence.BigInt(1n, 2n)) // false
```

**Signature**

```ts
declare const BigInt: Equivalence<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Equivalence.ts#L286)

Since v4.0.0