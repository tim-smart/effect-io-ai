Package: `effect`<br />
Module: `Number`<br />

## Number.nextPow2

Returns the next power of 2 from the given number.

**When to use**

Use to round a number up to the next power of two.

**Example** (Finding the next power of two)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.nextPow2(5), 8)
assert.deepStrictEqual(Number.nextPow2(17), 32)
```

**Signature**

```ts
declare const nextPow2: (n: number) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L708)

Since v2.0.0