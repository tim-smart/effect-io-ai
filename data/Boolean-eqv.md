# eqv

Combines two booleans using EQV (aka XNOR): `!xor(self, that)`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { eqv } from '@effect/data/Boolean'

assert.deepStrictEqual(eqv(true, true), true)
assert.deepStrictEqual(eqv(true, false), false)
assert.deepStrictEqual(eqv(false, true), false)
assert.deepStrictEqual(eqv(false, false), true)
```

**Signature**

```ts
export declare const eqv: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
