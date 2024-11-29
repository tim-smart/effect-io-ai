# getOrThrowWith

Extracts the value of an `Either` or throws if the `Either` is `Left`.

If a default error is sufficient for your use case and you don't need to configure the thrown error, see {@link getOrThrow}.

To import and use `getOrThrowWith` from the "Either" module:

ts
import \* as Either from "effect/Either"
// Can be accessed like this
Either.getOrThrowWith
undefined

**Example**

```ts
import { Either } from "effect"

assert.deepStrictEqual(
  Either.getOrThrowWith(Either.right(1), () => new Error("Unexpected Left")),
  1
)
assert.throws(() => Either.getOrThrowWith(Either.left("error"), () => new Error("Unexpected Left")))
```

**Signature**

```ts
export declare const getOrThrowWith: {
  <L>(onLeft: (left: L) => unknown): <A>(self: Either<A, L>) => A
  <R, L>(self: Either<R, L>, onLeft: (left: L) => unknown): R
}
```
