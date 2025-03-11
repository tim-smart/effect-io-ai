## isUndefined

Tests if a value is `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { isUndefined } from "effect/Predicate"

assert.deepStrictEqual(isUndefined(undefined), true)

assert.deepStrictEqual(isUndefined(null), false)
assert.deepStrictEqual(isUndefined("undefined"), false)
```

**Signature**

```ts
declare const isUndefined: (input: unknown) => input is undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L335)

Since v2.0.0