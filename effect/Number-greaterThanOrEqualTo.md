## greaterThanOrEqualTo

Returns a function that checks if a given `number` is greater than or equal to the provided one.

**Example**

```ts
import * as assert from "node:assert"
import { greaterThanOrEqualTo } from "effect/Number"

assert.deepStrictEqual(greaterThanOrEqualTo(2, 3), false)
assert.deepStrictEqual(greaterThanOrEqualTo(3, 3), true)
assert.deepStrictEqual(greaterThanOrEqualTo(4, 3), true)
```

**Signature**

```ts
declare const greaterThanOrEqualTo: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L257)

Since v2.0.0