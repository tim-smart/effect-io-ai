Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNumber

A refinement that checks if a value is a `number`. Note that this
check returns `false` for `NaN`.

**Example**

```ts
import * as assert from "node:assert"
import { isNumber } from "effect/Predicate"

assert.strictEqual(isNumber(123), true)
assert.strictEqual(isNumber(0), true)
assert.strictEqual(isNumber(-1.5), true)

assert.strictEqual(isNumber("123"), false)
assert.strictEqual(isNumber(NaN), false) // Special case: NaN is a number type but returns false
```

**Signature**

```ts
declare const isNumber: (input: unknown) => input is number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L356)

Since v2.0.0