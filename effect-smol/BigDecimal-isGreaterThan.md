Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isGreaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**Example**

```ts
import { fromStringUnsafe, isGreaterThan } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  isGreaterThan(fromStringUnsafe("2"), fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  isGreaterThan(fromStringUnsafe("3"), fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  isGreaterThan(fromStringUnsafe("4"), fromStringUnsafe("3")),
  true
)
```

**Signature**

```ts
declare const isGreaterThan: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L692)

Since v2.0.0