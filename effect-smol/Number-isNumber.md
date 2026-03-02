Package: `effect`<br />
Module: `Number`<br />

## Number.isNumber

Tests if a value is a `number`.

**Example**

```ts
import { isNumber } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(isNumber(2), true)
assert.deepStrictEqual(isNumber("2"), false)
```

**Signature**

```ts
declare const isNumber: (input: unknown) => input is number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L48)

Since v2.0.0