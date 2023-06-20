# orElseFail

Executes this effect and returns its value, if it succeeds, but otherwise
fails with the specified error.

To import and use `orElseFail` from the "Either" module:

```ts
import * as Either from '@effect/data/Either'

// Can be accessed like this
Either.orElseFail
```

**Signature**

```ts
export declare const orElseFail: {
  <E2>(onLeft: LazyArg<E2>): <E1, A>(self: Either<E1, A>) => Either<E2, A>
  <E1, A, E2>(self: Either<E1, A>, onLeft: LazyArg<E2>): Either<E2, A>
}
```
