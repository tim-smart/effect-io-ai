# constant

Creates a constant value that never changes.

This is useful when you want to pass a value to a higher-order function (a function that takes another function as its argument)
and want that inner function to always use the same value, no matter how many times it is called.

Part of the `Function` module, imported from `@effect/data/Function`.

**Example**

```ts
import { constant } from '@effect/data/Function'

const constNull = constant(null)

assert.deepStrictEqual(constNull(), null)
assert.deepStrictEqual(constNull(), null)
```

**Signature**

```ts
export declare const constant: <A>(value: A) => LazyArg<A>
```
