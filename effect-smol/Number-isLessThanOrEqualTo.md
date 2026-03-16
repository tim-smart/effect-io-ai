Package: `effect`<br />
Module: `Number`<br />

## Number.isLessThanOrEqualTo

Returns a function that checks if a given `number` is less than or equal to the provided one.

**Example**

```ts
import { isLessThanOrEqualTo } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(isLessThanOrEqualTo(2, 3), true)
assert.deepStrictEqual(isLessThanOrEqualTo(3, 3), true)
assert.deepStrictEqual(isLessThanOrEqualTo(4, 3), false)
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L264)

Since v2.0.0