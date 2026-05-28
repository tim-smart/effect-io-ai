Package: `effect`<br />
Module: `Function`<br />

## Function.constFalse

Returns `false` when called.

**When to use**

Use when an API expects a thunk and every invocation should return `false`.

**Example** (Returning false from a thunk)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Function.constFalse(), false)
```

**Signature**

```ts
declare const constFalse: LazyArg<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L403)

Since v2.0.0