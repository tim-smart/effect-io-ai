Package: `effect`<br />
Module: `Function`<br />

## Function.constTrue

A thunk that returns always `true`.

**Example**

```ts
import * as assert from "node:assert"
import { constTrue } from "effect/Function"

assert.deepStrictEqual(constTrue(), true)
```

**Signature**

```ts
declare const constTrue: LazyArg<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L286)

Since v2.0.0