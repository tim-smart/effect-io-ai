Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.and

Combines two booleans using logical AND: `self && that`.

**When to use**

Use to require both boolean operands to be `true`.

**Details**

Supports both data-first and data-last forms.

**Example** (Combining booleans with AND)

```ts
import { Boolean } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Boolean.and(true, true), true)
assert.deepStrictEqual(Boolean.and(true, false), false)
assert.deepStrictEqual(Boolean.and(false, true), false)
assert.deepStrictEqual(Boolean.and(false, false), false)
```

**Signature**

```ts
declare const and: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L207)

Since v2.0.0