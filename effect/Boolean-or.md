## or

Combines two boolean using OR: `self || that`.

**Example**

```ts
import * as assert from "node:assert"
import { or } from "effect/Boolean"

assert.deepStrictEqual(or(true, true), true)
assert.deepStrictEqual(or(true, false), true)
assert.deepStrictEqual(or(false, true), true)
assert.deepStrictEqual(or(false, false), false)
```

**Signature**

```ts
declare const or: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L150)

Since v2.0.0