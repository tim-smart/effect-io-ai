Package: `effect`<br />
Module: `Function`<br />

## Function.constUndefined

A thunk that returns always `undefined`.

**When to use**

Use when an API expects a thunk and every invocation should return
`undefined`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L446)

Since v2.0.0