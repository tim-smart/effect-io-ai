Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.SemigroupSum

`number` semigroup under addition.

**Example**

```ts
import * as assert from "node:assert"
import { SemigroupSum } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(SemigroupSum.combine(2, 3), 5)
```

**Signature**

```ts
declare const SemigroupSum: semigroup.Semigroup<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L33)

Since v0.24.0