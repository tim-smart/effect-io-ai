Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isBoolean

Tests if a value is a `boolean`.

**Example**

```ts
import * as assert from "node:assert"
import { isBoolean } from "effect/Predicate"

assert.deepStrictEqual(isBoolean(true), true)

assert.deepStrictEqual(isBoolean("true"), false)
```

**Signature**

```ts
declare const isBoolean: (input: unknown) => input is boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L262)

Since v2.0.0