# filterOrFail

Fails with the specified error if the predicate fails.

To import and use `filterOrFail` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.filterOrFail
```

**Signature**

```ts
export declare const filterOrFail: {
  <A, B extends A, E2>(
    refinement: Refinement<NoInfer<A>, B>,
    orFailWith: (a: NoInfer<A>) => E2
  ): <R, E>(self: STM<R, E, A>) => STM<R, E2 | E, B>
  <A, E2>(
    predicate: Predicate<NoInfer<A>>,
    orFailWith: (a: NoInfer<A>) => E2
  ): <R, E>(self: STM<R, E, A>) => STM<R, E2 | E, A>
  <R, E, A, B extends A, E2>(
    self: STM<R, E, A>,
    refinement: Refinement<A, B>,
    orFailWith: (a: A) => E2
  ): STM<R, E | E2, B>
  <R, E, A, E2>(self: STM<R, E, A>, predicate: Predicate<A>, orFailWith: (a: A) => E2): STM<R, E | E2, A>
}
```
