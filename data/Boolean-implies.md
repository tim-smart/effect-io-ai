# implies

Combines two booleans using an implication: `(!self || that)`.

Part of the `Boolean` module, imported from `@effect/data/Boolean`.

**Example**

```ts
import { implies } from '@effect/data/Boolean'

assert.deepStrictEqual(implies(true, true), true)
assert.deepStrictEqual(implies(true, false), false)
assert.deepStrictEqual(implies(false, true), true)
assert.deepStrictEqual(implies(false, false), true)
```

**Signature**

```ts
export declare const implies: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
