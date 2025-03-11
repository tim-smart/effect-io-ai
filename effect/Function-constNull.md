## constNull

A thunk that returns always `null`.

**Example**

```ts
import * as assert from "node:assert"
import { constNull } from "effect/Function"

assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
declare const constNull: LazyArg<null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L316)

Since v2.0.0