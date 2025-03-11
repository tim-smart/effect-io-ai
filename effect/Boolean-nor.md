## nor

Combines two booleans using NOR: `!(self || that)`.

**Example**

```ts
import * as assert from "node:assert"
import { nor } from "effect/Boolean"

assert.deepStrictEqual(nor(true, true), false)
assert.deepStrictEqual(nor(true, false), false)
assert.deepStrictEqual(nor(false, true), false)
assert.deepStrictEqual(nor(false, false), true)
```

**Signature**

```ts
declare const nor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L172)

Since v2.0.0