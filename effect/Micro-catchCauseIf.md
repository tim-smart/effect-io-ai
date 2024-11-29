# catchCauseIf

Selectively catch a `MicroCause` object of the given `Micro` effect,
using the provided predicate to determine if the failure should be caught.

To import and use `catchCauseIf` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchCauseIf
undefined

**Signature**

```ts
export declare const catchCauseIf: {
  <E, B, E2, R2, EB extends MicroCause<E>>(
    refinement: Refinement<MicroCause<E>, EB>,
    f: (cause: EB) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A | B, Exclude<E, MicroCause.Error<EB>> | E2, R | R2>
  <E, B, E2, R2>(
    predicate: Predicate<MicroCause<NoInfer<E>>>,
    f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A | B, E | E2, R | R2>
  <A, E, R, B, E2, R2, EB extends MicroCause<E>>(
    self: Micro<A, E, R>,
    refinement: Refinement<MicroCause<E>, EB>,
    f: (cause: EB) => Micro<B, E2, R2>
  ): Micro<A | B, Exclude<E, MicroCause.Error<EB>> | E2, R | R2>
  <A, E, R, B, E2, R2>(
    self: Micro<A, E, R>,
    predicate: Predicate<MicroCause<NoInfer<E>>>,
    f: (cause: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>
  ): Micro<A | B, E | E2, R | R2>
}
```
