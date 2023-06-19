# nand

Combines two boolean using NAND: `!(self && that)`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { nand } from '@effect/data/Boolean'

assert.deepStrictEqual(nand(true, true), false)
assert.deepStrictEqual(nand(true, false), true)
assert.deepStrictEqual(nand(false, true), true)
assert.deepStrictEqual(nand(false, false), true)
```

**Signature**

```ts
export declare const nand: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
