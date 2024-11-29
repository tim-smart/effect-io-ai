# orElse

Returns `self` if it is a `Right` or `that` otherwise.

To import and use `orElse` from the "Either" module:

ts
import \* as Either from "effect/Either"
// Can be accessed like this
Either.orElse
undefined

**Signature**

```ts
export declare const orElse: {
  <L, R2, L2>(that: (left: L) => Either<R2, L2>): <R>(self: Either<R, L>) => Either<R | R2, L2>
  <R, L, R2, L2>(self: Either<R, L>, that: (left: L) => Either<R2, L2>): Either<R | R2, L2>
}
```
