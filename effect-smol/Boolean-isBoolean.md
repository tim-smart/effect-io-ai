Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.isBoolean

Tests if a value is a `boolean`.

**Example**

```ts
import { isBoolean } from "effect/Boolean"
import * as assert from "node:assert"

assert.deepStrictEqual(isBoolean(true), true)
assert.deepStrictEqual(isBoolean("true"), false)
```

**Signature**

```ts
declare const isBoolean: (input: unknown) => input is boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L51)

Since v2.0.0