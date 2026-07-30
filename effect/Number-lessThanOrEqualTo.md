Package: `effect`<br />
Module: `Number`<br />

## Number.lessThanOrEqualTo

Returns a function that checks if a given `number` is less than or equal to
the provided one.

**Example**

```ts
import * as assert from "node:assert/strict"
import { lessThanOrEqualTo } from "effect/Number"

assert.equal(lessThanOrEqualTo(2, 3), true)
assert.equal(lessThanOrEqualTo(3, 3), true)
assert.equal(lessThanOrEqualTo(4, 3), false)
```

**Signature**

```ts
declare const lessThanOrEqualTo: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L784)

Since v2.0.0