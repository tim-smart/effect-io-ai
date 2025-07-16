Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUint8Array

A refinement that checks if a value is a `Uint8Array`.

**Example**

```ts
import * as assert from "node:assert"
import { isUint8Array } from "effect/Predicate"

assert.strictEqual(isUint8Array(new Uint8Array()), true)

assert.strictEqual(isUint8Array(new Uint16Array()), false)
assert.strictEqual(isUint8Array([1, 2, 3]), false)
```

**Signature**

```ts
declare const isUint8Array: (input: unknown) => input is Uint8Array
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L731)

Since v2.0.0