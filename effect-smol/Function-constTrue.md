Package: `effect`<br />
Module: `Function`<br />

## Function.constTrue

A thunk that returns always `true`.

**Example**

```ts
import { constTrue } from "effect/Function"
import * as assert from "node:assert"

assert.deepStrictEqual(constTrue(), true)
```

**Signature**

```ts
declare const constTrue: LazyArg<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Function.ts#L294)

Since v2.0.0