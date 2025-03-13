Package: `@effect/typeclass`<br />
Module: `BigInt`<br />

## BigInt.SemigroupSum

`bigint` semigroup under addition.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupSum } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(SemigroupSum.combine(2n, 3n), 5n)
```

**Signature**

```ts
declare const SemigroupSum: semigroup.Semigroup<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/BigInt.ts#L23)

Since v0.24.0