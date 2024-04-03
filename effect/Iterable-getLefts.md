# getLefts

Retrieves the `Left` values from an `Iterable` of `Either`s.

To import and use `getLefts` from the "Iterable" module:

```ts
import * as Iterable from "effect/Iterable"
// Can be accessed like this
Iterable.getLefts
```

**Example**

```ts
import { getLefts } from "effect/Iterable"
import { right, left } from "effect/Either"

assert.deepStrictEqual(Array.from(getLefts([right(1), left("err"), right(2)])), ["err"])
```

**Signature**

```ts
export declare const getLefts: <R, L>(self: Iterable<Either<R, L>>) => Iterable<L>
```
