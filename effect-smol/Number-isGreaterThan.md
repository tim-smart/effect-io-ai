Package: `effect`<br />
Module: `Number`<br />

## Number.isGreaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**Example** (Checking greater-than comparisons)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.isGreaterThan(2, 3), false)
assert.deepStrictEqual(Number.isGreaterThan(3, 3), false)
assert.deepStrictEqual(Number.isGreaterThan(4, 3), true)
```

**Signature**

```ts
declare const isGreaterThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L298)

Since v4.0.0