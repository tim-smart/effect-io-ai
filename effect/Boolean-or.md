# or

Combines two boolean using OR: `self || that`.

To import and use `or` from the "Boolean" module:

ts
import \* as Boolean from "effect/Boolean"
// Can be accessed like this
Boolean.or
undefined

**Example**

```ts
import { or } from "effect/Boolean"

assert.deepStrictEqual(or(true, true), true)
assert.deepStrictEqual(or(true, false), true)
assert.deepStrictEqual(or(false, true), true)
assert.deepStrictEqual(or(false, false), false)
```

**Signature**

```ts
export declare const or: { (that: boolean): (self: boolean) => boolean; (self: boolean, that: boolean): boolean }
```
