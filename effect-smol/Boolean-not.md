Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.not

Negates the given boolean: `!self`

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L143)

Since v2.0.0