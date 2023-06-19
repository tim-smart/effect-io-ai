# nor

Combines two booleans using NOR: `!(self || that)`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { nor } from '@effect/data/Boolean'

assert.deepStrictEqual(nor(true, true), false)
assert.deepStrictEqual(nor(true, false), false)
assert.deepStrictEqual(nor(false, true), false)
assert.deepStrictEqual(nor(false, false), true)
```

**Signature**

```ts
export declare const nor: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
