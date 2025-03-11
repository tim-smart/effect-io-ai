## getSecond

Return the second element of a tuple.

**Example**

```ts
import * as assert from "node:assert"
import { getSecond } from "effect/Tuple"

assert.deepStrictEqual(getSecond(["hello", 42]), 42)
```

**Signature**

```ts
declare const getSecond: <L, R>(self: readonly [L, R]) => R
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L66)

Since v2.0.0