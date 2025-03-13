Package: `effect`<br />
Module: `BigDecimal`<br />

## BigDecimal.unsafeFromString

Parses a numerical `string` into a `BigDecimal`.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeFromString, make } from "effect/BigDecimal"

assert.deepStrictEqual(unsafeFromString("123"), make(123n, 0))
assert.deepStrictEqual(unsafeFromString("123.456"), make(123456n, 3))
assert.throws(() => unsafeFromString("123.abc"))
```

**Signature**

```ts
declare const unsafeFromString: (s: string) => BigDecimal
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/BigDecimal.ts#L952)

Since v2.0.0