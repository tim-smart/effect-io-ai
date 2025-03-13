Package: `@effect/typeclass`<br />
Module: `BigInt`<br />

## BigInt.SemigroupMin

A `Semigroup` that uses the minimum between two values.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupMin } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(SemigroupMin.combine(2n, 3n), 2n)
```

**Signature**

```ts
declare const SemigroupMin: semigroup.Semigroup<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/BigInt.ts#L64)

Since v0.24.0