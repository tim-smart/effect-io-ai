Package: `effect`<br />
Module: `Function`<br />

## Function.constFalse

A thunk that returns always `false`.

**Example**

```ts
import { constFalse } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(constFalse(), false)
```

**Signature**

```ts
declare const constFalse: LazyArg<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L318)

Since v2.0.0