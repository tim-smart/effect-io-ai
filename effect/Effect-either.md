# either

Returns an effect whose failure and success have been lifted into an
`Either`. The resulting effect cannot fail, because the failure case has
been exposed as part of the `Either` success case.

This method is useful for recovering from effects that may fail.

The error parameter of the returned `Effect` is `never`, since it is
guaranteed the effect does not model failure.

To import and use `either` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.either
```

**Signature**

```ts
export declare const either: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Either.Either<E, A>>
```
