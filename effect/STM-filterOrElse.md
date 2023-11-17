# filterOrElse

Supplies `orElse` if the predicate fails.

To import and use `filterOrElse` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.filterOrElse
```

**Signature**

```ts
export declare const filterOrElse: {
  <A, B extends A, X extends A, R2, E2, A2>(
    refinement: Refinement<A, B>,
    orElse: (a: X) => STM<R2, E2, A2>
  ): <R, E>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, B | A2>
  <A, X extends A, Y extends A, R2, E2, A2>(
    predicate: Predicate<X>,
    orElse: (a: Y) => STM<R2, E2, A2>
  ): <R, E>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, A | A2>
  <R, E, A, B extends A, X extends A, R2, E2, A2>(
    self: STM<R, E, A>,
    refinement: Refinement<A, B>,
    orElse: (a: X) => STM<R2, E2, A2>
  ): STM<R | R2, E | E2, B | A2>
  <R, E, A, X extends A, Y extends A, R2, E2, A2>(
    self: STM<R, E, A>,
    predicate: Predicate<X>,
    orElse: (a: Y) => STM<R2, E2, A2>
  ): STM<R | R2, E | E2, A | A2>
}
```
