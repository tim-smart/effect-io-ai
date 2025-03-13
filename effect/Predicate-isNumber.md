Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isNumber

Tests if a value is a `number`.

**Example**

```ts
import * as assert from "node:assert"
import { isNumber } from "effect/Predicate"

assert.deepStrictEqual(isNumber(2), true)

assert.deepStrictEqual(isNumber("2"), false)
```

**Signature**

```ts
declare const isNumber: (input: unknown) => input is number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L244)

Since v2.0.0