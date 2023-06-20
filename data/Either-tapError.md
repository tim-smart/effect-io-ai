# tapError

Returns an effect that effectfully "peeks" at the failure of this effect.

To import and use `tapError` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.tapError
```

**Signature**

```ts
export declare const tapError: {
  <E1, E2, _>(onLeft: (e: E1) => Either<E2, _>): <A>(self: Either<E1, A>) => Either<E1 | E2, A>
  <E1, A, E2, _>(self: Either<E1, A>, onLeft: (e: E1) => Either<E2, _>): Either<E1 | E2, A>
}
```
