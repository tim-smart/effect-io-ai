# ensure

Creates a new `Array` from a value that might not be an iterable.

To import and use `ensure` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.ensure
undefined

**Example**

```ts
import { Array } from "effect"

assert.deepStrictEqual(Array.ensure("a"), ["a"])
assert.deepStrictEqual(Array.ensure(["a"]), ["a"])
assert.deepStrictEqual(Array.ensure(["a", "b", "c"]), ["a", "b", "c"])
```

**Signature**

```ts
export declare const ensure: <A>(self: ReadonlyArray<A> | A) => Array<A>
```
