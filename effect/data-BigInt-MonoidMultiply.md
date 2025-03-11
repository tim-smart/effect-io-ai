## MonoidMultiply

`bigint` monoid under multiplication.

The `empty` value is `1n`.

**Example**

```ts
import * as assert from "node:assert"
import { MonoidMultiply } from "@effect/typeclass/data/BigInt"

assert.deepStrictEqual(MonoidMultiply.combine(2n, 3n), 6n)
assert.deepStrictEqual(MonoidMultiply.combine(2n, MonoidMultiply.empty), 2n)
```

**Signature**

```ts
declare const MonoidMultiply: monoid.Monoid<bigint>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/BigInt.ts#L121)

Since v0.24.0