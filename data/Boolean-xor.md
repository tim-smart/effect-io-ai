# xor

Combines two booleans using XOR: `(!self && that) || (self && !that)`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { xor } from '@effect/data/Boolean'

assert.deepStrictEqual(xor(true, true), false)
assert.deepStrictEqual(xor(true, false), true)
assert.deepStrictEqual(xor(false, true), true)
assert.deepStrictEqual(xor(false, false), false)
```

**Signature**

```ts
export declare const xor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
