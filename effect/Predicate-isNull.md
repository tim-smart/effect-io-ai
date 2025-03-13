Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNull

Tests if a value is `null`.

**Example**

```ts
import * as assert from "node:assert"
import { isNull } from "effect/Predicate"

assert.deepStrictEqual(isNull(null), true)

assert.deepStrictEqual(isNull(undefined), false)
assert.deepStrictEqual(isNull("null"), false)
```

**Signature**

```ts
declare const isNull: (input: unknown) => input is null
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L373)

Since v2.0.0