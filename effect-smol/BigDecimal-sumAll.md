Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sumAll

Takes an `Iterable` of `BigDecimal`s and returns their sum as a single `BigDecimal`.

**Example**

```ts
import { fromStringUnsafe, sumAll } from "effect/BigDecimal"
import * as assert from "node:assert"

assert.deepStrictEqual(
  sumAll([fromStringUnsafe("2"), fromStringUnsafe("3"), fromStringUnsafe("4")]),
  fromStringUnsafe("9")
)
```

**Signature**

```ts
declare const sumAll: (collection: Iterable<BigDecimal>) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/BigDecimal.ts#L295)

Since v4.0.0