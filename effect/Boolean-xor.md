# xor

Combines two booleans using XOR: `(!self && that) || (self && !that)`.

To import and use `xor` from the "Boolean" module:

```ts
import * as Boolean from "effect/Boolean"
// Can be accessed like this
Boolean.xor
```

**Example**

```ts
import { xor } from "effect/Boolean"

assert.deepStrictEqual(xor(true, true), false)
assert.deepStrictEqual(xor(true, false), true)
assert.deepStrictEqual(xor(false, true), true)
assert.deepStrictEqual(xor(false, false), false)
```

**Signature**

```ts
export declare const xor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
