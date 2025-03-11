## constFalse

A thunk that returns always `false`.

**Example**

```ts
import * as assert from "node:assert"
import { constFalse } from "effect/Function"

assert.deepStrictEqual(constFalse(), false)
```

**Signature**

```ts
declare const constFalse: LazyArg<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L301)

Since v2.0.0