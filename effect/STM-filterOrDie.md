# filterOrDie

Dies with specified defect if the predicate fails.

To import and use `filterOrDie` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.filterOrDie
```

**Signature**

```ts
export declare const filterOrDie: {
  <A, B extends A>(refinement: Refinement<A, B>, defect: LazyArg<unknown>): <R, E>(self: STM<R, E, A>) => STM<R, E, B>
  <A, X extends A>(predicate: Predicate<X>, defect: LazyArg<unknown>): <R, E>(self: STM<R, E, A>) => STM<R, E, A>
  <R, E, A, B extends A>(self: STM<R, E, A>, refinement: Refinement<A, B>, defect: LazyArg<unknown>): STM<R, E, B>
  <R, E, A, X extends A>(self: STM<R, E, A>, predicate: Predicate<X>, defect: LazyArg<unknown>): STM<R, E, A>
}
```
