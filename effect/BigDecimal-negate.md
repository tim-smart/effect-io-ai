Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.negate

Provides a negate operation on `BigDecimal`s.

**Example**

```ts
import * as assert from "node:assert"
import { negate, unsafeFromString } from "effect/BigDecimal"

assert.deepStrictEqual(negate(unsafeFromString("3")), unsafeFromString("-3"))
assert.deepStrictEqual(negate(unsafeFromString("-6")), unsafeFromString("6"))
```

**Signature**

```ts
declare const negate: (n: BigDecimal) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L708)

Since v2.0.0