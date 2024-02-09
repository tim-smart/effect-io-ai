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
    orElse: (a: NoInfer<A>) => STM<C, E2, R2>
  ): <R, E>(self: STM<A, E, R>) => STM<B | C, E2 | E, R2 | R>
  <A, R2, E2, B>(
    predicate: Predicate<NoInfer<A>>,
    orElse: (a: NoInfer<A>) => STM<B, E2, R2>
  ): <R, E>(self: STM<A, E, R>) => STM<A | B, E2 | E, R2 | R>
  <R, E, A, B extends A, R2, E2, C>(
    self: STM<A, E, R>,
    refinement: Refinement<A, B>,
    orElse: (a: A) => STM<C, E2, R2>
  ): STM<B | C, E | E2, R | R2>
  <R, E, A, R2, E2, B>(
    self: STM<A, E, R>,
    predicate: Predicate<A>,
    orElse: (a: A) => STM<B, E2, R2>
  ): STM<A | B, E | E2, R | R2>
}
```
