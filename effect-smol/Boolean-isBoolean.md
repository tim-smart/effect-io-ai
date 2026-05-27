Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.isBoolean

Tests if a value is a `boolean`.

**When to use**

Use to validate unknown input and narrow it to `boolean`.

**Example** (Checking for booleans)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.isBoolean(true), true)
assert.deepStrictEqual(Boolean.isBoolean("true"), false)
```

**Signature**

```ts
declare const isBoolean: (input: unknown) => input is boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L119)

Since v2.0.0