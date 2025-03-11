## Semigroup

`Semigroup` instance for `Ordering`, returns the left-most non-zero `Ordering`.

**Example**

```ts
import * as assert from "node:assert"
import { Semigroup } from "@effect/typeclass/data/Ordering"

assert.deepStrictEqual(Semigroup.combine(0, -1), -1)
assert.deepStrictEqual(Semigroup.combine(0, 1), 1)
assert.deepStrictEqual(Semigroup.combine(1, -1), 1)
```

**Signature**

```ts
declare const Semigroup: semigroup.Semigroup<Ordering>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Ordering.ts#L24)

Since v0.24.0