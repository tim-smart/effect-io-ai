Package: `effect`<br />
Module: `Number`<br />

## Number.nextPow2

Returns the next power of 2 greater than or equal to the given number.

- For `positive` inputs, returns the smallest power of 2 that is >= the input
- For `zero`, returns 2
- For `negative` inputs, returns NaN (as logarithms of negative numbers are
  undefined)
- For `NaN` input, returns NaN
- For `Infinity`, returns Infinity

**Example**

```ts
import * as assert from "node:assert/strict"
import { nextPow2 } from "effect/Number"

assert.equal(nextPow2(5), 8)
assert.equal(nextPow2(17), 32)
assert.equal(nextPow2(0), 2)
assert.equal(Number.isNaN(nextPow2(-1)), true) // Negative inputs result in NaN
```

**Signature**

```ts
declare const nextPow2: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L1016)

Since v2.0.0