# nand

Combines two boolean using NAND: `!(self && that)`.

To import and use `nand` from the "Boolean" module:

```ts
import * as Boolean from "effect/Boolean"
// Can be accessed like this
Boolean.nand
```

**Example**

```ts
import { nand } from "effect/Boolean"

assert.deepStrictEqual(nand(true, true), false)
assert.deepStrictEqual(nand(true, false), true)
assert.deepStrictEqual(nand(false, true), true)
assert.deepStrictEqual(nand(false, false), true)
```

**Signature**

```ts
export declare const nand: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
