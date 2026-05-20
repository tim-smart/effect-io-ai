Package: `effect`<br />
Module: `Function`<br />

## Function.constFalse

A thunk that returns always `false`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L348)

Since v2.0.0