Package: `effect`<br />
Module: `Boolean`<br />

## Boolean.and

Combines two boolean using AND: `self && that`.

**Example**

```ts
import * as assert from "node:assert"
import { and } from "effect/Boolean"

assert.deepStrictEqual(and(true, true), true)
assert.deepStrictEqual(and(true, false), false)
assert.deepStrictEqual(and(false, true), false)
assert.deepStrictEqual(and(false, false), false)
```

**Signature**

```ts
declare const and: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Boolean.ts#L106)

Since v2.0.0