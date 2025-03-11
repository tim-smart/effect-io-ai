## SemigroupMax

A `Semigroup` that uses the maximum between two values.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupMax } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(SemigroupMax.combine(2n, 3n), 3n)
```

**Signature**

```ts
declare const SemigroupMax: semigroup.Semigroup<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/BigInt.ts#L80)

Since v0.24.0