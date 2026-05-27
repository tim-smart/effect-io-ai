Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.not

Negates the given boolean: `!self`

**When to use**

Use to invert a boolean value.

**Example** (Negating booleans)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.not(true), false)
assert.deepStrictEqual(Boolean.not(false), true)
```

**Signature**

```ts
declare const not: (self: boolean) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L226)

Since v2.0.0