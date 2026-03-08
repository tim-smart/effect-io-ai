Package: `effect`<br />
Module: `Function`<br />

## Function.constNull

A thunk that returns always `null`.

**Example**

```ts
import { constNull } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
declare const constNull: LazyArg<null>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L326)

Since v2.0.0