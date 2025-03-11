## sign

Determines the sign of a given `BigDecimal`.

**Example**

```ts
import * as assert from "node:assert"
import { sign, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(sign(unsafeFromString("-5")), -1)
assert.deepStrictEqual(sign(unsafeFromString("0")), 0)
assert.deepStrictEqual(sign(unsafeFromString("5")), 1)
```

**Signature**

```ts
declare const sign: (n: BigDecimal) => Ordering
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L670)

Since v2.0.0