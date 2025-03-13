Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.lessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**Example**

```ts
import * as assert from "node:assert"
import { lessThan, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(lessThan(unsafeFromString("2"), unsafeFromString("3")), true)
assert.deepStrictEqual(lessThan(unsafeFromString("3"), unsafeFromString("3")), false)
assert.deepStrictEqual(lessThan(unsafeFromString("4"), unsafeFromString("3")), false)
```

**Signature**

```ts
declare const lessThan: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L480)

Since v2.0.0