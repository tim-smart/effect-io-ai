Package: `effect`<br />
Module: `Number`<br />

## Number.nextPow2

Returns the next power of 2 from the given number.

**Example**

```ts
import { nextPow2 } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(nextPow2(5), 8)
assert.deepStrictEqual(nextPow2(17), 32)
```

**Signature**

```ts
declare const nextPow2: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L532)

Since v2.0.0