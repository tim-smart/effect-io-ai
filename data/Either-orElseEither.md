# orElseEither

Returns an effect that will produce the value of this effect, unless it
fails, in which case, it will produce the value of the specified effect.

To import and use `orElseEither` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.orElseEither
```

**Signature**

```ts
export declare const orElseEither: {
  <E1, E2, B>(that: (e1: E1) => Either<E2, B>): <A>(self: Either<E1, A>) => Either<E2, Either<A, B>>
  <E1, A, E2, B>(self: Either<E1, A>, that: (e1: E1) => Either<E2, B>): Either<E2, Either<A, B>>
}
```