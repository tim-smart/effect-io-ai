Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.nor

Combines two booleans using NOR: `!(self || that)`.

**When to use**

Use to accept only when both boolean operands are `false`.

**Example** (Combining booleans with NOR)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.nor(true, true), false)
assert.deepStrictEqual(Boolean.nor(true, false), false)
assert.deepStrictEqual(Boolean.nor(false, true), false)
assert.deepStrictEqual(Boolean.nor(false, false), true)
```

**Signature**

```ts
declare const nor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L288)

Since v2.0.0