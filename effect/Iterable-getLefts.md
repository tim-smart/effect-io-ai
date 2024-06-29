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
import { Iterable, Either } from "effect"

assert.deepStrictEqual(Array.from(Iterable.getLefts([Either.right(1), Either.left("err"), Either.right(2)])), ["err"])
```

**Signature**

```ts
export declare const getLefts: <R, L>(self: Iterable<Either<R, L>>) => Iterable<L>
```
