# make

Builds a `NonEmptyArray` from an non-empty collection of elements.

To import and use `make` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.make
undefined

**Example**

```ts
import { Array } from "effect"

const result = Array.make(1, 2, 3)
assert.deepStrictEqual(result, [1, 2, 3])
```

**Signature**

```ts
export declare const make: <Elements extends NonEmptyArray<any>>(
  ...elements: Elements
) => NonEmptyArray<Elements[number]>
```
