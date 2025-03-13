Package: `@effect/typeclass`<br />
Module: `Number`<br />

## Number.MonoidMultiply

`number` monoid under multiplication.

The `empty` value is `1`.

**Example**

```ts
import * as assert from "node:assert"
import { MonoidMultiply } from "@effect/typeclass/data/Number"

assert.deepStrictEqual(MonoidMultiply.combine(2, 3), 6)
assert.deepStrictEqual(MonoidMultiply.combine(2, MonoidMultiply.empty), 2)
```

**Signature**

```ts
declare const MonoidMultiply: monoid.Monoid<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Number.ts#L134)

Since v0.24.0