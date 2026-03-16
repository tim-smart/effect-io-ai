Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.isLessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**Example**

```ts
import { fromStringUnsafe, isLessThan } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  isLessThan(fromStringUnsafe("2"), fromStringUnsafe("3")),
  true
)
assert.deepStrictEqual(
  isLessThan(fromStringUnsafe("3"), fromStringUnsafe("3")),
  false
)
assert.deepStrictEqual(
  isLessThan(fromStringUnsafe("4"), fromStringUnsafe("3")),
  false
)
```

**Signature**

```ts
declare const isLessThan: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L578)

Since v2.0.0