# mapLeft

Maps the `Left` side of an `Either` value to a new `Either` value.

To import and use `mapLeft` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.mapLeft
```

**Signature**

```ts
export declare const mapLeft: {
  <L, L2>(f: (left: L) => L2): <R>(self: Either<R, L>) => Either<R, L2>
  <R, L, L2>(self: Either<R, L>, f: (left: L) => L2): Either<R, L2>
}
```
