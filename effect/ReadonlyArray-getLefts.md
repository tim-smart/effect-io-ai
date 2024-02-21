# getLefts

Retrieves the `Left` values from an `Iterable` of `Either`s, collecting them into an array.

To import and use `getLefts` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.getLefts
```

**Example**

```ts
import { getLefts } from "effect/ReadonlyArray"
import { right, left } from "effect/Either"

assert.deepStrictEqual(getLefts([right(1), left("err"), right(2)]), ["err"])
```

**Signature**

```ts
export declare const getLefts: <R, L>(self: Iterable<Either<R, L>>) => L[]
```
