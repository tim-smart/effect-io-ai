# andThen

Executes a sequence of two `Either`s. The second `Either` can be dependent on the result of the first `Either`.

To import and use `andThen` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.andThen
```

**Signature**

```ts
export declare const andThen: {
  <R, R2, L2>(f: (right: R) => Either<R2, L2>): <L>(self: Either<R, L>) => Either<R2, L2 | L>
  <R2, L2>(f: Either<R2, L2>): <L, R1>(self: Either<R1, L>) => Either<R2, L2 | L>
  <R, R2>(f: (right: R) => R2): <L>(self: Either<R, L>) => Either<R2, L>
  <R2>(right: R2): <R1, L>(self: Either<R1, L>) => Either<R2, L>
  <R, L, R2, L2>(self: Either<R, L>, f: (right: R) => Either<R2, L2>): Either<R2, L | L2>
  <R, L, R2, L2>(self: Either<R, L>, f: Either<R2, L2>): Either<R2, L | L2>
  <R, L, R2>(self: Either<R, L>, f: (right: R) => R2): Either<R2, L>
  <R, L, R2>(self: Either<R, L>, f: R2): Either<R2, L>
}
```
