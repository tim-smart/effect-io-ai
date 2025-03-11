## isBoolean

Tests if a value is a `boolean`.

**Example**

```ts
import * as assert from "node:assert"
import { isBoolean } from "effect/Boolean"

assert.deepStrictEqual(isBoolean(true), true)
assert.deepStrictEqual(isBoolean("true"), false)
```

**Signature**

```ts
declare const isBoolean: (input: unknown) => input is boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L29)

Since v2.0.0