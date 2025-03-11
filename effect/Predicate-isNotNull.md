## isNotNull

Tests if a value is not `null`.

**Example**

```ts
import * as assert from "node:assert"
import { isNotNull } from "effect/Predicate"

assert.deepStrictEqual(isNotNull(undefined), true)
assert.deepStrictEqual(isNotNull("null"), true)

assert.deepStrictEqual(isNotNull(null), false)
```

**Signature**

```ts
declare const isNotNull: <A>(input: A) => input is Exclude<A, null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L392)

Since v2.0.0