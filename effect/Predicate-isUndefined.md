Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUndefined

A refinement that checks if a value is `undefined`.

**Example**

```ts
import * as assert from "node:assert"
import { isUndefined } from "effect/Predicate"

assert.strictEqual(isUndefined(undefined), true)

assert.strictEqual(isUndefined(null), false)
assert.strictEqual(isUndefined("undefined"), false)
```

**Signature**

```ts
declare const isUndefined: (input: unknown) => input is undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L458)

Since v2.0.0