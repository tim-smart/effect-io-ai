## abs

Determines the absolute value of a given `BigDecimal`.

**Example**

```ts
import * as assert from "node:assert"
import { abs, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(abs(unsafeFromString("-5")), unsafeFromString("5"))
assert.deepStrictEqual(abs(unsafeFromString("0")), unsafeFromString("0"))
assert.deepStrictEqual(abs(unsafeFromString("5")), unsafeFromString("5"))
```

**Signature**

```ts
declare const abs: (n: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L688)

Since v2.0.0