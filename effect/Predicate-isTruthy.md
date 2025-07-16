Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTruthy

A predicate that checks if a value is "truthy" in JavaScript.
Fails for `false`, `0`, `-0`, `0n`, `""`, `null`, `undefined`, and `NaN`.

**Example**

```ts
import * as assert from "node:assert"
import { isTruthy } from "effect/Predicate"

assert.strictEqual(isTruthy(1), true)
assert.strictEqual(isTruthy("hello"), true)
assert.strictEqual(isTruthy({}), true)

assert.strictEqual(isTruthy(0), false)
assert.strictEqual(isTruthy(""), false)
assert.strictEqual(isTruthy(null), false)
assert.strictEqual(isTruthy(undefined), false)
```

**Signature**

```ts
declare const isTruthy: (input: unknown) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L275)

Since v2.0.0