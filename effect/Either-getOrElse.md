# getOrElse

Returns the wrapped value if it's a `Right` or a default value if is a `Left`.

To import and use `getOrElse` from the "Either" module:

ts
import \* as Either from "effect/Either"
// Can be accessed like this
Either.getOrElse
undefined

**Example**

```ts
import { Either } from "effect"

assert.deepStrictEqual(
  Either.getOrElse(Either.right(1), (error) => error + "!"),
  1
)
assert.deepStrictEqual(
  Either.getOrElse(Either.left("not a number"), (error) => error + "!"),
  "not a number!"
)
```

**Signature**

```ts
export declare const getOrElse: {
  <L, R2>(onLeft: (left: L) => R2): <R>(self: Either<R, L>) => R2 | R
  <R, L, R2>(self: Either<R, L>, onLeft: (left: L) => R2): R | R2
}
```
