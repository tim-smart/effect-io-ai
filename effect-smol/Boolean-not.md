Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.not

Negates the given boolean: `!self`

**Example**

```ts
import { not } from "effect/Boolean"
import * as assert from "node:assert"

assert.deepStrictEqual(not(true), false)
assert.deepStrictEqual(not(false), true)
```

**Signature**

```ts
declare const not: (self: boolean) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L137)

Since v2.0.0