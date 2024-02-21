# map

Maps the `Right` side of an `Either` value to a new `Either` value.

To import and use `map` from the "Either" module:

```ts
import * as Either from "effect/Either"
// Can be accessed like this
Either.map
```

**Signature**

```ts
export declare const map: {
  <R, R2>(f: (right: R) => R2): <L>(self: Either<R, L>) => Either<R2, L>
  <R, L, R2>(self: Either<R, L>, f: (right: R) => R2): Either<R2, L>
}
```
