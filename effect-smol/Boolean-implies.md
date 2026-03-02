Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.implies

Combines two booleans using an implication: `(!self || that)`.

**Example**

```ts
import { implies } from "effect/Boolean"
import * as assert from "node:assert"

assert.deepStrictEqual(implies(true, true), true)
assert.deepStrictEqual(implies(true, false), false)
assert.deepStrictEqual(implies(false, true), true)
assert.deepStrictEqual(implies(false, false), true)
```

**Signature**

```ts
declare const implies: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L288)

Since v2.0.0