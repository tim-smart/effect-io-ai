# filterOrDie

Dies with specified defect if the predicate fails.

To import and use `filterOrDie` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.filterOrDie
```

**Signature**

```ts
export declare const filterOrDie: {
  <A, B extends A>(
    refinement: Refinement<NoInfer<A>, B>,
    defect: LazyArg<unknown>
  ): <E, R>(self: STM<A, E, R>) => STM<B, E, R>
  <A>(predicate: Predicate<NoInfer<A>>, defect: LazyArg<unknown>): <E, R>(self: STM<A, E, R>) => STM<A, E, R>
  <A, E, R, B extends A>(self: STM<A, E, R>, refinement: Refinement<A, B>, defect: LazyArg<unknown>): STM<B, E, R>
  <A, E, R>(self: STM<A, E, R>, predicate: Predicate<A>, defect: LazyArg<unknown>): STM<A, E, R>
}
```
