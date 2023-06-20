# fromEitherCause

Lifts an `Either<Cause<E>, A>` into an `Effect<never, E, A>`.

To import and use `fromEitherCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.fromEitherCause
```

**Signature**

```ts
export declare const fromEitherCause: <E, A>(either: Either.Either<Cause.Cause<E>, A>) => Effect<never, E, A>
```
