# getLefts

Retrieves the `Left` values from an `Iterable` of `Either`s, collecting them into an array.

To import and use `getLefts` from the "Array" module:

ts
import \* as Array from "effect/Array"
// Can be accessed like this
Array.getLefts
undefined

**Example**

```ts
import { Array, Either } from "effect"

assert.deepStrictEqual(Array.getLefts([Either.right(1), Either.left("err"), Either.right(2)]), ["err"])
```

**Signature**

```ts
export declare const getLefts: <T extends Iterable<array_<any, any>>>(
  self: T
) => Array<array_.Left<ReadonlyArray.Infer<T>>>
```
