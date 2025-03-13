Package: `effect`<br />
Module: `Number`<br />

## Number.unsafeDivide

Provides a division operation on `number`s.

Throws a `RangeError` if the divisor is `0`.

**Example**

```ts
import * as assert from "node:assert"
import { unsafeDivide } from "effect/Number"

assert.deepStrictEqual(unsafeDivide(6, 3), 2)
```

**Signature**

```ts
declare const unsafeDivide: { (that: number): (self: number) => number; (self: number, that: number): number; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L129)

Since v2.0.0