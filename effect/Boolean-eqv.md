# eqv

Combines two booleans using EQV (aka XNOR): `!xor(self, that)`.

To import and use `eqv` from the "Boolean" module:

```ts
import * as Boolean from 'effect/Boolean'

// Can be accessed like this
Boolean.eqv
```

**Example**

```ts
import { eqv } from 'effect/Boolean'

assert.deepStrictEqual(eqv(true, true), true)
assert.deepStrictEqual(eqv(true, false), false)
assert.deepStrictEqual(eqv(false, true), false)
assert.deepStrictEqual(eqv(false, false), true)
```

**Signature**

```ts
export declare const eqv: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
