Package: `effect`<br />
Module: `Function`<br />

## Function.constTrue

A thunk that returns always `true`.

**When to use**

Use when an API expects a thunk and every invocation should return `true`.

**Example** (Returning true from a thunk)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Function.constTrue(), true)
```

**Signature**

```ts
declare const constTrue: LazyArg<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L382)

Since v2.0.0