Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.negate

Provides a negate operation on `BigDecimal`s.

**Example**

```ts
import { fromStringUnsafe, negate } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(negate(fromStringUnsafe("3")), fromStringUnsafe("-3"))
assert.deepStrictEqual(negate(fromStringUnsafe("-6")), fromStringUnsafe("6"))
```

**Signature**

```ts
declare const negate: (n: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L844)

Since v2.0.0