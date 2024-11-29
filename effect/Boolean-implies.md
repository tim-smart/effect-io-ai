# implies

Combines two booleans using an implication: `(!self || that)`.

To import and use `implies` from the "Boolean" module:

ts
import \* as Boolean from "effect/Boolean"
// Can be accessed like this
Boolean.implies
undefined

**Example**

```ts
import { implies } from "effect/Boolean"

assert.deepStrictEqual(implies(true, true), true)
assert.deepStrictEqual(implies(true, false), false)
assert.deepStrictEqual(implies(false, true), true)
assert.deepStrictEqual(implies(false, false), true)
```

**Signature**

```ts
export declare const implies: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
