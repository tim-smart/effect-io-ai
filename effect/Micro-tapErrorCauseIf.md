# tapErrorCauseIf

Perform a side effect using if a `MicroCause` object matches the specified
predicate.

To import and use `tapErrorCauseIf` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.tapErrorCauseIf
```

**Signature**

```ts
export declare const tapErrorCauseIf: {
  <E, B, E2, R2, EB extends MicroCause<E>>(
    refinement: Refinement<MicroCause<E>, EB>,
    f: (a: EB) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>
  <E, B, E2, R2>(
    predicate: (cause: NoInfer<MicroCause<E>>) => boolean,
    f: (a: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R | R2>
  <A, E, R, B, E2, R2, EB extends MicroCause<E>>(
    self: Micro<A, E, R>,
    refinement: Refinement<MicroCause<E>, EB>,
    f: (a: EB) => Micro<B, E2, R2>
  ): Micro<A, E | E2, R | R2>
  <A, E, R, B, E2, R2>(
    self: Micro<A, E, R>,
    predicate: (cause: NoInfer<MicroCause<E>>) => boolean,
    f: (a: NoInfer<MicroCause<E>>) => Micro<B, E2, R2>
  ): Micro<A, E | E2, R | R2>
}
```
