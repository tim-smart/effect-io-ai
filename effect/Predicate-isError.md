Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isError

A refinement that checks if a value is an instance of `Error`.

**Example**

```ts
import * as assert from "node:assert"
import { isError } from "effect/Predicate"

assert.strictEqual(isError(new Error("boom")), true)
assert.strictEqual(isError(new TypeError("boom")), true)

assert.strictEqual(isError({ message: "boom" }), false)
assert.strictEqual(isError("boom"), false)
```

**Signature**

```ts
declare const isError: (input: unknown) => input is Error
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L711)

Since v2.0.0