Package: `effect`<br />
Module: `Function`<br />

## Function.constVoid

A thunk that returns always `void`.

**When to use**

Use when an API expects a thunk used only for its call effect and not for a
meaningful return value.

**Example** (Returning void from a thunk)

```ts
import { Function } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Function.constVoid(), undefined)
```

**Signature**

```ts
declare const constVoid: LazyArg<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L468)

Since v2.0.0