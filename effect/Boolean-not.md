## not

Negates the given boolean: `!self`

**Example**

```ts
import * as assert from "node:assert"
import { not } from "effect/Boolean"

assert.deepStrictEqual(not(true), false)
assert.deepStrictEqual(not(false), true)
```

**Signature**

```ts
declare const not: (self: boolean) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L87)

Since v2.0.0