Package: `effect`<br />
Module: `Hash`<br />

## Hash.number

Computes a hash value for a number.

This function creates a hash value for numeric inputs, handling special cases
like NaN, Infinity, and -Infinity with distinct hash values. It uses bitwise operations to ensure good distribution
of hash values across different numeric inputs.

**Example**

```ts
import { Hash } from "effect"

console.log(Hash.number(42)) // hash of 42
console.log(Hash.number(3.14)) // hash of 3.14
console.log(Hash.number(NaN)) // hash of "NaN"
console.log(Hash.number(Infinity)) // 0 (special case)

// Same numbers produce the same hash
console.log(Hash.number(100) === Hash.number(100)) // true
```

**Signature**

```ts
declare const number: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L274)

Since v2.0.0