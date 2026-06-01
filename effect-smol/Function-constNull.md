Package: `effect`<br />
Module: `Function`<br />

## Function.constNull

Returns `null` when called.

**When to use**

Use when you need a thunk that returns `null` on every invocation.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L425)

Since v2.0.0