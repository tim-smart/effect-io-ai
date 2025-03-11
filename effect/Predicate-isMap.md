## isMap

Tests if a value is a `Map`.

**Example**

```ts
import * as assert from "node:assert"
import { isMap } from "effect/Predicate"

assert.deepStrictEqual(isMap(new Map()), true)
assert.deepStrictEqual(isMap({}), false)
assert.deepStrictEqual(isMap(null), false)
assert.deepStrictEqual(isMap(undefined), false)
```

**Signature**

```ts
declare const isMap: (input: unknown) => input is Map<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L208)

Since v2.0.0