## greaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**Example**

```ts
import * as assert from "node:assert"
import { greaterThan, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(greaterThan(unsafeFromString("2"), unsafeFromString("3")), false)
assert.deepStrictEqual(greaterThan(unsafeFromString("3"), unsafeFromString("3")), false)
assert.deepStrictEqual(greaterThan(unsafeFromString("4"), unsafeFromString("3")), true)
```

**Signature**

```ts
declare const greaterThan: { (that: BigDecimal): (self: BigDecimal) => boolean; (self: BigDecimal, that: BigDecimal): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L522)

Since v2.0.0