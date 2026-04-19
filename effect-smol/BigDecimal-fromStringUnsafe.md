Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromStringUnsafe

Parses a numerical `string` into a `BigDecimal`.

**Example**

```ts
import { fromStringUnsafe, make } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(fromStringUnsafe("123"), make(123n, 0))
assert.deepStrictEqual(fromStringUnsafe("123.456"), make(123456n, 3))
assert.throws(() => fromStringUnsafe("123.abc"))
```

**Signature**

```ts
declare const fromStringUnsafe: (s: string) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L1206)

Since v2.0.0