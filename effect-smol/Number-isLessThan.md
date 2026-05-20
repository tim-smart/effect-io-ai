Package: `effect`<br />
Module: `Number`<br />

## Number.isLessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**Example** (Checking less-than comparisons)

```ts
import { Number } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Number.isLessThan(2, 3), true)
assert.deepStrictEqual(Number.isLessThan(3, 3), false)
assert.deepStrictEqual(Number.isLessThan(4, 3), false)
```

**Signature**

```ts
declare const isLessThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L248)

Since v4.0.0