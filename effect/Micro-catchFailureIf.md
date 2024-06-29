# catchFailureIf

Selectively catch a `Failure` object of the given `Micro` effect,
using the provided predicate to determine if the failure should be caught.

To import and use `catchFailureIf` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchFailureIf
```

**Signature**

```ts
export declare const catchFailureIf: {
  <E, B, E2, R2, EB extends Failure<E>>(
    refinement: Refinement<Failure<E>, EB>,
    f: (failure: EB) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<B | A, E2, R2 | R>
  <E, B, E2, R2>(
    predicate: Predicate<Failure<NoInfer<E>>>,
    f: (failure: Failure<E>) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<B | A, E2, R2 | R>
  <A, E, R, B, E2, R2, EB extends Failure<E>>(
    self: Micro<A, E, R>,
    refinement: Refinement<Failure<E>, EB>,
    f: (failure: EB) => Micro<B, E2, R2>
  ): Micro<A | B, E2, R | R2>
  <A, E, R, B, E2, R2>(
    self: Micro<A, E, R>,
    predicate: Predicate<Failure<NoInfer<E>>>,
    f: (failure: Failure<E>) => Micro<B, E2, R2>
  ): Micro<A | B, E2, R | R2>
}
```
