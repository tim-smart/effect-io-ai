# catchIf

Recovers from errors that match the given predicate.

To import and use `catchIf` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchIf
```

**Signature**

```ts
export declare const catchIf: {
  <E, EB extends E, R2, E2, A2>(
    refinement: Refinement<NoInfer<E>, EB>,
    f: (e: EB) => Effect<R2, E2, A2>
  ): <R, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | Exclude<E, EB>, A2 | A>
  <E, R2, E2, A2>(
    predicate: Predicate<NoInfer<E>>,
    f: (e: NoInfer<E>) => Effect<R2, E2, A2>
  ): <R, A>(self: Effect<R, E, A>) => Effect<R2 | R, E | E2, A2 | A>
  <R, E, A, EA extends E, EB extends EA, R2, E2, A2>(
    self: Effect<R, E, A>,
    refinement: Refinement<EA, EB>,
    f: (e: EB) => Effect<R2, E2, A2>
  ): Effect<R | R2, E2 | Exclude<E, EB>, A | A2>
  <R, E, A, R2, E2, A2>(
    self: Effect<R, E, A>,
    predicate: Predicate<E>,
    f: (e: E) => Effect<R2, E2, A2>
  ): Effect<R | R2, E | E2, A | A2>
}
```
