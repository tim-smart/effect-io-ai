Package: `effect`<br />
Module: `Number`<br />

## Number.nextPow2

Returns the next power of 2 from the given number.

**Example**

```ts
import * as assert from "node:assert"
import { nextPow2 } from "effect/Number"

assert.deepStrictEqual(nextPow2(5), 8)
assert.deepStrictEqual(nextPow2(17), 32)
```

**Signature**

```ts
declare const nextPow2: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L470)

Since v2.0.0