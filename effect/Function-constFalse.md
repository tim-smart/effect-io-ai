Package: `effect`<br />
Module: `Function`<br />

## Function.constFalse

Returns `false` when called.

**When to use**

Use when you need a thunk that returns `false` on every invocation.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L366)

Since v2.0.0