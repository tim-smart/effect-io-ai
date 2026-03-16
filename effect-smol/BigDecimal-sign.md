Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sign

Determines the sign of a given `BigDecimal`.

**Example**

```ts
import { fromStringUnsafe, sign } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(sign(fromStringUnsafe("-5")), -1)
assert.deepStrictEqual(sign(fromStringUnsafe("0")), 0)
assert.deepStrictEqual(sign(fromStringUnsafe("5")), 1)
```

**Signature**

```ts
declare const sign: (n: BigDecimal) => Ordering
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L810)

Since v2.0.0