Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isBigInt

Tests if a value is a `bigint`.

**Example**

```ts
import * as assert from "node:assert"
import { isBigInt } from "effect/Predicate"

assert.deepStrictEqual(isBigInt(1n), true)

assert.deepStrictEqual(isBigInt(1), false)
```

**Signature**

```ts
declare const isBigInt: (input: unknown) => input is bigint
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L280)

Since v2.0.0