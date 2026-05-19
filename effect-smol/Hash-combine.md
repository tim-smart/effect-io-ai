Package: `effect`<br />
Module: `Hash`<br />

## Hash.combine

Combines two hash values into a single hash value.

This function takes two hash values and combines them using a mathematical
operation to produce a new hash value. It's useful for creating hash values
of composite structures.

**Example** (Combining hash values)

```ts
import { Hash, pipe } from "effect"

// Can also be used with pipe

const hash1 = Hash.hash("hello")
const hash2 = Hash.hash("world")

// Combine two hash values
const combined = Hash.combine(hash2)(hash1)
console.log(combined)
const result = pipe(hash1, Hash.combine(hash2))
```

**Signature**

```ts
declare const combine: { (b: number): (self: number) => number; (self: number, b: number): number; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hash.ts#L200)

Since v2.0.0