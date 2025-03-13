Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isTruthy

Tests if a value is `truthy`.

**Example**

```ts
import * as assert from "node:assert"
import { isTruthy } from "effect/Predicate"

assert.deepStrictEqual(isTruthy(1), true)
assert.deepStrictEqual(isTruthy(0), false)
assert.deepStrictEqual(isTruthy(""), false)
```

**Signature**

```ts
declare const isTruthy: (input: unknown) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L169)

Since v2.0.0