# constant

Creates a constant value that never changes.

This is useful when you want to pass a value to a higher-order function (a function that takes another function as its argument)
and want that inner function to always use the same value, no matter how many times it is called.

To import and use `constant` from the "Function" module:

```ts
import * as Function from 'effect/Function'

// Can be accessed like this
Function.constant
```

**Example**

```ts
import { constant } from 'effect/Function'

const constNull = constant(null)

assert.deepStrictEqual(constNull(), null)
assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
export declare const constant: <A>(value: A) => LazyArg<A>
```
