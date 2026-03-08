Package: `effect`<br />
Module: `Function`<br />

## Function.constVoid

A thunk that returns always `void`.

**Example**

```ts
import { constVoid } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(constVoid(), undefined)
```

**Signature**

```ts
declare const constVoid: LazyArg<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L358)

Since v2.0.0