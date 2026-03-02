Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.nor

Combines two booleans using NOR: `!(self || that)`.

**Example**

```ts
import { nor } from "effect/Boolean"
import * as assert from "node:assert"

assert.deepStrictEqual(nor(true, true), false)
assert.deepStrictEqual(nor(true, false), false)
assert.deepStrictEqual(nor(false, true), false)
assert.deepStrictEqual(nor(false, false), true)
```

**Signature**

```ts
declare const nor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L222)

Since v2.0.0