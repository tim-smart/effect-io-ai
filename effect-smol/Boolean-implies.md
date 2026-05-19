Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.implies

Combines two booleans using an implication: `(!self || that)`.

**Example** (Checking boolean implication)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.implies(true, true), true)
assert.deepStrictEqual(Boolean.implies(true, false), false)
assert.deepStrictEqual(Boolean.implies(false, true), true)
assert.deepStrictEqual(Boolean.implies(false, false), true)
```

**Signature**

```ts
declare const implies: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L301)

Since v2.0.0