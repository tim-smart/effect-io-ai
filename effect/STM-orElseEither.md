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
  <A2, E2, R2>(that: LazyArg<STM<A2, E2, R2>>): <A, E, R>(self: STM<A, E, R>) => STM<Either.Either<A2, A>, E2, R2 | R>
  <A, E, R, A2, E2, R2>(self: STM<A, E, R>, that: LazyArg<STM<A2, E2, R2>>): STM<Either.Either<A2, A>, E2, R | R2>
}
```
