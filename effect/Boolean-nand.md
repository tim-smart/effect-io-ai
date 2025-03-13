Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.nand

Combines two boolean using NAND: `!(self && that)`.

**Example**

```ts
import * as assert from "node:assert"
import { nand } from "effect/Boolean"

assert.deepStrictEqual(nand(true, true), false)
assert.deepStrictEqual(nand(true, false), true)
assert.deepStrictEqual(nand(false, true), true)
assert.deepStrictEqual(nand(false, false), true)
```

**Signature**

```ts
declare const nand: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L128)

Since v2.0.0