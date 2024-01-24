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
  <A, B extends A, R2, E2, C>(
    refinement: Refinement<NoInfer<A>, B>,
    orElse: (a: NoInfer<A>) => STM<R2, E2, C>
  ): <R, E>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, B | C>
  <A, R2, E2, B>(
    predicate: Predicate<NoInfer<A>>,
    orElse: (a: NoInfer<A>) => STM<R2, E2, B>
  ): <R, E>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, A | B>
  <R, E, A, B extends A, R2, E2, C>(
    self: STM<R, E, A>,
    refinement: Refinement<A, B>,
    orElse: (a: A) => STM<R2, E2, C>
  ): STM<R | R2, E | E2, B | C>
  <R, E, A, R2, E2, B>(
    self: STM<R, E, A>,
    predicate: Predicate<A>,
    orElse: (a: A) => STM<R2, E2, B>
  ): STM<R | R2, E | E2, A | B>
}
```
