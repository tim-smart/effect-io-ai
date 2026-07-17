Package: `effect`<br />
Module: `Function`<br />

## Function.constUndefined

Returns `undefined` when called.

**When to use**

Use when you need a thunk that returns `undefined` on every invocation.

**Example** (Returning undefined from a thunk)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Function.constUndefined(), undefined)
```

**Signature**

```ts
declare const constUndefined: LazyArg<undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L408)

Since v2.0.0