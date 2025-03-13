Package: `effect`<br />
Module: `Function`<br />

## Function.constVoid

A thunk that returns always `void`.

**Example**

```ts
import * as assert from "node:assert"
import { constVoid } from "effect/Function"

assert.deepStrictEqual(constVoid(), undefined)
```

**Signature**

```ts
declare const constVoid: LazyArg<void>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L346)

Since v2.0.0