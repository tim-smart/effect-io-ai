# tapFailureIf

Perform a side effect using if a `Failure` object matches the specified
predicate.

To import and use `tapFailureIf` from the "Micro" module:

```ts
import * as Micro from "effect/Micro"
// Can be accessed like this
Micro.tapFailureIf
```

**Signature**

```ts
export declare const tapFailureIf: {
  <E, B, E2, R2, EB extends Failure<E>>(
    refinement: Refinement<Failure<E>, EB>,
    f: (a: EB) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R2 | R>
  <E, B, E2, R2>(
    predicate: (failure: Failure<E>) => boolean,
    f: (a: Failure<E>) => Micro<B, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A, E | E2, R2 | R>
  <A, E, R, B, E2, R2, EB extends Failure<E>>(
    self: Micro<A, E, R>,
    refinement: Refinement<Failure<E>, EB>,
    f: (a: EB) => Micro<B, E2, R2>
  ): Micro<A, E | E2, R | R2>
  <A, E, R, B, E2, R2>(
    self: Micro<A, E, R>,
    predicate: (failure: Failure<E>) => boolean,
    f: (a: Failure<E>) => Micro<B, E2, R2>
  ): Micro<A, E | E2, R | R2>
}
```
