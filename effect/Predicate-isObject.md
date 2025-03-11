## isObject

Tests if a value is an `object`.

**Example**

```ts
import * as assert from "node:assert"
import { isObject } from "effect/Predicate"

assert.deepStrictEqual(isObject({}), true)
assert.deepStrictEqual(isObject([]), true)

assert.deepStrictEqual(isObject(null), false)
assert.deepStrictEqual(isObject(undefined), false)
```

**Signature**

```ts
declare const isObject: (input: unknown) => input is object
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L455)

Since v2.0.0