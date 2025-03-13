Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.fromString

Parses a numerical `string` into a `BigDecimal`.

**Example**

```ts
import * as assert from "node:assert"
import { BigDecimal, Option } from "effect"

assert.deepStrictEqual(BigDecimal.fromString("123"), Option.some(BigDecimal.make(123n, 0)))
assert.deepStrictEqual(BigDecimal.fromString("123.456"), Option.some(BigDecimal.make(123456n, 3)))
assert.deepStrictEqual(BigDecimal.fromString("123.abc"), Option.none())
```

**Signature**

```ts
declare const fromString: (s: string) => Option.Option<BigDecimal>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L891)

Since v2.0.0