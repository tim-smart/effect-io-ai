Package: `effect`<br />
Module: `Number`<br />

## Number.isLessThan

Returns `true` if the first argument is less than the second, otherwise `false`.

**Example**

```ts
import { isLessThan } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(isLessThan(2, 3), true)
assert.deepStrictEqual(isLessThan(3, 3), false)
assert.deepStrictEqual(isLessThan(4, 3), false)
```

**Signature**

```ts
declare const isLessThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L243)

Since v2.0.0