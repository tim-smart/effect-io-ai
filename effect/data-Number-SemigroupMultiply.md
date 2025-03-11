## SemigroupMultiply

`number` semigroup under multiplication.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupMultiply } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(SemigroupMultiply.combine(2, 3), 6)
```

**Signature**

```ts
declare const SemigroupMultiply: semigroup.Semigroup<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L49)

Since v0.24.0