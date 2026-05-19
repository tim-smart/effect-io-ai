Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.nand

Combines two boolean using NAND: `!(self && that)`.

**Example** (Combining booleans with NAND)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.nand(true, true), false)
assert.deepStrictEqual(Boolean.nand(true, false), true)
assert.deepStrictEqual(Boolean.nand(false, true), true)
assert.deepStrictEqual(Boolean.nand(false, false), true)
```

**Signature**

```ts
declare const nand: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L186)

Since v2.0.0