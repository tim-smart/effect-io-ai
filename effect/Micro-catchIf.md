# catchIf

Catch any expected errors that match the specified predicate.

To import and use `catchIf` from the "Micro" module:

ts
import \* as Micro from "effect/Micro"
// Can be accessed like this
Micro.catchIf
undefined

**Signature**

```ts
export declare const catchIf: {
  <E, EB extends E, A2, E2, R2>(
    refinement: Refinement<NoInfer<E>, EB>,
    f: (e: EB) => Micro<A2, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A2 | A, E2 | Exclude<E, EB>, R2 | R>
  <E, A2, E2, R2>(
    predicate: Predicate<NoInfer<E>>,
    f: (e: NoInfer<E>) => Micro<A2, E2, R2>
  ): <A, R>(self: Micro<A, E, R>) => Micro<A2 | A, E | E2, R2 | R>
  <A, E, R, EB extends E, A2, E2, R2>(
    self: Micro<A, E, R>,
    refinement: Refinement<E, EB>,
    f: (e: EB) => Micro<A2, E2, R2>
  ): Micro<A | A2, E2 | Exclude<E, EB>, R | R2>
  <A, E, R, A2, E2, R2>(
    self: Micro<A, E, R>,
    predicate: Predicate<E>,
    f: (e: E) => Micro<A2, E2, R2>
  ): Micro<A | A2, E | E2, R | R2>
}
```
