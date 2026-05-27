Package: `effect`<br />
Module: `Function`<br />

## Function.constNull

A thunk that returns always `null`.

**When to use**

Use when an API expects a thunk and every invocation should return `null`.

**Example** (Returning null from a thunk)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Function.constNull(), null)
```

**Signature**

```ts
declare const constNull: LazyArg<null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L424)

Since v2.0.0