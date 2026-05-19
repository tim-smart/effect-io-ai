Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.or

Combines two boolean using OR: `self || that`.

**Example** (Combining booleans with OR)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.or(true, true), true)
assert.deepStrictEqual(Boolean.or(true, false), true)
assert.deepStrictEqual(Boolean.or(false, true), true)
assert.deepStrictEqual(Boolean.or(false, false), false)
```

**Signature**

```ts
declare const or: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Boolean.ts#L209)

Since v2.0.0