Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.eqv

Combines two booleans using EQV (aka XNOR): `!xor(self, that)`.

**When to use**

Use to accept when both boolean operands have the same truth value.

**Example** (Checking boolean equivalence)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.eqv(true, true), true)
assert.deepStrictEqual(Boolean.eqv(true, false), false)
assert.deepStrictEqual(Boolean.eqv(false, true), false)
assert.deepStrictEqual(Boolean.eqv(false, false), true)
```

**Signature**

```ts
declare const eqv: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L342)

Since v2.0.0