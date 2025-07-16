Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNotNull

A refinement that checks if a value is not `null`.

**Example**

```ts
import * as assert from "node:assert"
import { isNotNull } from "effect/Predicate"

assert.strictEqual(isNotNull(undefined), true)
assert.strictEqual(isNotNull("value"), true)

assert.strictEqual(isNotNull(null), false)
```

**Signature**

```ts
declare const isNotNull: <A>(input: A) => input is Exclude<A, null>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L515)

Since v2.0.0