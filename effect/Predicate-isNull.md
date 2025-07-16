Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNull

A refinement that checks if a value is `null`.

**Example**

```ts
import * as assert from "node:assert"
import { isNull } from "effect/Predicate"

assert.strictEqual(isNull(null), true)

assert.strictEqual(isNull(undefined), false)
assert.strictEqual(isNull("null"), false)
```

**Signature**

```ts
declare const isNull: (input: unknown) => input is null
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L496)

Since v2.0.0