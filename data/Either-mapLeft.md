# mapLeft

Maps the `Left` side of an `Either` value to a new `Either` value.

To import and use `mapLeft` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.mapLeft
```

**Signature**

```ts
export declare const mapLeft: {
  <E, G>(f: (e: E) => G): <A>(self: Either<E, A>) => Either<G, A>
  <E, A, G>(self: Either<E, A>, f: (e: E) => G): Either<G, A>
}
```
