# isLeft

Determine if a `Either` is a `Left`.

To import and use `isLeft` from the "Either" module:

ts
import \* as Either from "effect/Either"
// Can be accessed like this
Either.isLeft
undefined

**Example**

```ts
import { Either } from "effect"

assert.deepStrictEqual(Either.isLeft(Either.right(1)), false)
assert.deepStrictEqual(Either.isLeft(Either.left("a")), true)
```

**Signature**

```ts
export declare const isLeft: <R, L>(self: Either<R, L>) => self is Left<L, R>
```
