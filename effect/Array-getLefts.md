# getLefts

Retrieves the `Left` values from an `Iterable` of `Either`s, collecting them into an array.

To import and use `getLefts` from the "Array" module:

```ts
import * as Array from "effect/Array"
// Can be accessed like this
Array.getLefts
```

**Example**

```ts
import { getLefts } from "effect/Array"
import { right, left } from "effect/Either"

assert.deepStrictEqual(getLefts([right(1), left("err"), right(2)]), ["err"])
```

**Signature**

```ts
export declare const getLefts: <R, L>(self: Iterable<Either<R, L>>) => L[]
```
