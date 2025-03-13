Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.xor

Combines two booleans using XOR: `(!self && that) || (self && !that)`.

**Example**

```ts
import * as assert from "node:assert"
import { xor } from "effect/Boolean"

assert.deepStrictEqual(xor(true, true), false)
assert.deepStrictEqual(xor(true, false), true)
assert.deepStrictEqual(xor(false, true), true)
assert.deepStrictEqual(xor(false, false), false)
```

**Signature**

```ts
declare const xor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L194)

Since v2.0.0