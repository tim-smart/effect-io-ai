# tap

Returns an effect that effectfully "peeks" at the success of this effect.

To import and use `tap` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.tap
```

**Signature**

```ts
export declare const tap: {
  <E1, A, E2, _>(self: Either<E1, A>, f: (a: A) => Either<E2, _>): Either<E1 | E2, A>
  <A, E2, _>(f: (a: A) => Either<E2, _>): <E1>(self: Either<E1, A>) => Either<E2 | E1, A>
}
```
