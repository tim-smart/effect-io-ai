## isNotUndefined

Tests if a value is not `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { isNotUndefined } from "effect/Predicate"

assert.deepStrictEqual(isNotUndefined(null), true)
assert.deepStrictEqual(isNotUndefined("undefined"), true)

assert.deepStrictEqual(isNotUndefined(undefined), false)
```

**Signature**

```ts
declare const isNotUndefined: <A>(input: A) => input is Exclude<A, undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L354)

Since v2.0.0