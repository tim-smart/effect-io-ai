Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.eqv

Combines two booleans using EQV (aka XNOR): `!xor(self, that)`.

**Example**

```ts
import { eqv } from "effect/Boolean"
import * as assert from "node:assert"

assert.deepStrictEqual(eqv(true, true), true)
assert.deepStrictEqual(eqv(true, false), false)
assert.deepStrictEqual(eqv(false, true), false)
assert.deepStrictEqual(eqv(false, false), true)
```

**Signature**

```ts
declare const eqv: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L266)

Since v2.0.0