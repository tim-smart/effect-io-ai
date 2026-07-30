Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNumber

A refinement that checks if a value is a `number`.

**Example**

```ts
import * as assert from "node:assert"
import { isNumber } from "effect/Predicate"

assert.strictEqual(isNumber(123), true)
assert.strictEqual(isNumber(0), true)
assert.strictEqual(isNumber(-1.5), true)
assert.strictEqual(isNumber(NaN), true)

assert.strictEqual(isNumber("123"), false)
```

**Signature**

```ts
declare const isNumber: (input: unknown) => input is number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L355)

Since v2.0.0