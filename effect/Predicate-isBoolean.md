Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isBoolean

A refinement that checks if a value is a `boolean`.

**Example**

```ts
import * as assert from "node:assert"
import { isBoolean } from "effect/Predicate"

assert.strictEqual(isBoolean(true), true)
assert.strictEqual(isBoolean(false), true)

assert.strictEqual(isBoolean("true"), false)
assert.strictEqual(isBoolean(0), false)
```

**Signature**

```ts
declare const isBoolean: (input: unknown) => input is boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L376)

Since v2.0.0