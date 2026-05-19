Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.xor

Combines two booleans using XOR: `(!self && that) || (self && !that)`.

**Example** (Combining booleans with XOR)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.xor(true, true), false)
assert.deepStrictEqual(Boolean.xor(true, false), true)
assert.deepStrictEqual(Boolean.xor(false, true), true)
assert.deepStrictEqual(Boolean.xor(false, false), false)
```

**Signature**

```ts
declare const xor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L255)

Since v2.0.0