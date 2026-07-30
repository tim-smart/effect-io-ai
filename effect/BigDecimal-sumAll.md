Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.sumAll

Takes an `Iterable` of `BigDecimal`s and returns their sum as a single `BigDecimal`

**Example**

```ts
import * as assert from "node:assert"
import { unsafeFromString, sumAll } from "effect/BigDecimal"

assert.deepStrictEqual(sumAll([unsafeFromString("2"), unsafeFromString("3"), unsafeFromString("4")]), unsafeFromString("9"))
```

**Signature**

```ts
declare const sumAll: (collection: Iterable<BigDecimal>) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L1342)

Since v3.16.0