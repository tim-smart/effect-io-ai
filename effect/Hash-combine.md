Package: `effect`<br />
Module: `Hash`<br />

## Hash.combine

Combines two hash values into a single hash value.

**When to use**

Use to build a hash for a composite value by folding together hash values for
its parts.

**Details**

Supports both direct and pipeable usage. The implementation combines two
hash values with `(self * 53) ^ b`.

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

**See**

- `hash` for computing hash values from arbitrary inputs
- `structureKeys` for hashing selected object fields without manual combination

**Signature**

```ts
declare const combine: { (b: number): (self: number) => number; (self: number, b: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Hash.ts#L237)

Since v2.0.0