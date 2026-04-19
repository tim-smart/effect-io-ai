Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.multiplyAll

Takes an `Iterable` of `BigDecimal`s and returns their multiplication as a single `BigDecimal`.

**Example**

```ts
import { fromStringUnsafe, multiplyAll } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  multiplyAll([fromStringUnsafe("2"), fromStringUnsafe("3"), fromStringUnsafe("4")]),
  fromStringUnsafe("24")
)
```

**Signature**

```ts
declare const multiplyAll: (collection: Iterable<BigDecimal>) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L352)

Since v4.0.0