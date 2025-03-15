Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.isUint8Array

A guard that succeeds when the input is a `Uint8Array`.

**Example**

```ts
import * as assert from "node:assert"
import { isUint8Array } from "effect/Predicate"

assert.deepStrictEqual(isUint8Array(new Uint8Array()), true)

assert.deepStrictEqual(isUint8Array(null), false)
assert.deepStrictEqual(isUint8Array({}), false)
```

**Signature**

```ts
declare const isUint8Array: (input: unknown) => input is Uint8Array
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L579)

Since v2.0.0