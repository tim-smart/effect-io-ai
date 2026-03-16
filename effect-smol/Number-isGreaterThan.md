Package: `effect`<br />
Module: `Number`<br />

## Number.isGreaterThan

Returns `true` if the first argument is greater than the second, otherwise `false`.

**Example**

```ts
import { isGreaterThan } from "effect/Number"
import * as assert from "node:assert"

assert.deepStrictEqual(isGreaterThan(2, 3), false)
assert.deepStrictEqual(isGreaterThan(3, 3), false)
assert.deepStrictEqual(isGreaterThan(4, 3), true)
```

**Signature**

```ts
declare const isGreaterThan: { (that: number): (self: number) => boolean; (self: number, that: number): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Number.ts#L285)

Since v2.0.0