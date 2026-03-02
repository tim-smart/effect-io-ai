Package: `effect`<br />
Module: `Hash`<br />

## Hash.optimize

Optimizes a hash value by applying bit manipulation techniques.

This function takes a hash value and applies bitwise operations to improve
the distribution of hash values, reducing the likelihood of collisions.

**Example**

```ts
import { Hash } from "effect"

const rawHash = 1234567890
const optimizedHash = Hash.optimize(rawHash)
console.log(optimizedHash) // optimized hash value

// Often used internally by other hash functions
const stringHash = Hash.optimize(Hash.string("hello"))
```

**Signature**

```ts
declare const optimize: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L222)

Since v2.0.0