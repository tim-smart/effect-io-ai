Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isBigInt

A refinement that checks if a value is a `bigint`.

**Example**

```ts
import * as assert from "node:assert"
import { isBigInt } from "effect/Predicate"

assert.strictEqual(isBigInt(1n), true)

assert.strictEqual(isBigInt(1), false)
assert.strictEqual(isBigInt("1"), false)
```

**Signature**

```ts
declare const isBigInt: (input: unknown) => input is bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L394)

Since v2.0.0