## isSet

Tests if a value is a `Set`.

**Example**

```ts
import * as assert from "node:assert"
import { isSet } from "effect/Predicate"

assert.deepStrictEqual(isSet(new Set([1, 2])), true)
assert.deepStrictEqual(isSet(new Set()), true)
assert.deepStrictEqual(isSet({}), false)
assert.deepStrictEqual(isSet(null), false)
assert.deepStrictEqual(isSet(undefined), false)
```

**Signature**

```ts
declare const isSet: (input: unknown) => input is Set<unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L189)

Since v2.0.0