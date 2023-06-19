# or

Combines two boolean using OR: `self || that`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { or } from '@effect/data/Boolean'

assert.deepStrictEqual(or(true, true), true)
assert.deepStrictEqual(or(true, false), true)
assert.deepStrictEqual(or(false, true), true)
assert.deepStrictEqual(or(false, false), false)
```

**Signature**

```ts
export declare const or: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
