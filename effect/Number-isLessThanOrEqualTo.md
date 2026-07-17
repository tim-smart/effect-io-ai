Package: `effect`<br />
Module: `Number`<br />

## Number.isLessThanOrEqualTo

Returns a function that checks if a given `number` is less than or equal to the provided one.

**When to use**

Use to test whether one number is less than or equal to another.

**Example** (Checking less-than-or-equal comparisons)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.isLessThanOrEqualTo(2, 3), true)
assert.deepStrictEqual(Number.isLessThanOrEqualTo(3, 3), true)
assert.deepStrictEqual(Number.isLessThanOrEqualTo(4, 3), false)
```

**Signature**

```ts
declare const isLessThanOrEqualTo: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L349)

Since v4.0.0