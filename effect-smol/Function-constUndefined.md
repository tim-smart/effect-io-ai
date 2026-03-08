Package: `effect`<br />
Module: `Function`<br />

## Function.constUndefined

A thunk that returns always `undefined`.

**Example**

```ts
import { constUndefined } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(constUndefined(), undefined)
```

**Signature**

```ts
declare const constUndefined: LazyArg<undefined>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L342)

Since v2.0.0