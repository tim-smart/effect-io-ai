# nor

Combines two booleans using NOR: `!(self || that)`.

To import and use `nor` from the "Boolean" module:

```ts
import * as Boolean from '@effect/data/Boolean'

// Can be accessed like this
Boolean.nor
```

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
