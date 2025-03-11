## constUndefined

A thunk that returns always `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { constUndefined } from "effect/Function"

assert.deepStrictEqual(constUndefined(), undefined)
```

**Signature**

```ts
declare const constUndefined: LazyArg<undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Function.ts#L331)

Since v2.0.0