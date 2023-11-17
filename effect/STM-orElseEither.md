# orElseEither

Returns a transactional effect that will produce the value of this effect
in left side, unless it fails or retries, in which case, it will produce
the value of the specified effect in right side.

To import and use `orElseEither` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.orElseEither
```

**Signature**

```ts
export declare const orElseEither: {
  <R2, E2, A2>(that: LazyArg<STM<R2, E2, A2>>): <R, E, A>(self: STM<R, E, A>) => STM<R2 | R, E2, Either.Either<A, A2>>
  <R, E, A, R2, E2, A2>(self: STM<R, E, A>, that: LazyArg<STM<R2, E2, A2>>): STM<R | R2, E2, Either.Either<A, A2>>
}
```
