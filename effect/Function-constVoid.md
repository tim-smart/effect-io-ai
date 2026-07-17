Package: `effect`<br />
Module: `Function`<br />

## Function.constVoid

Returns no meaningful value when called.

**When to use**

Use when you need a thunk that is called only for its effect and has no
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L430)

Since v2.0.0