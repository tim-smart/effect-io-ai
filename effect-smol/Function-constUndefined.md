Package: `effect`<br />
Module: `Function`<br />

## Function.constUndefined

A thunk that returns always `undefined`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L385)

Since v2.0.0