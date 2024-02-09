# filterOrDieMessage

Dies with a `Cause.RuntimeException` having the specified message if the
predicate fails.

To import and use `filterOrDieMessage` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.filterOrDieMessage
```

**Signature**

```ts
export declare const filterOrDieMessage: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>, message: string): <R, E>(self: STM<A, E, R>) => STM<B, E, R>
  <A>(predicate: Predicate<NoInfer<A>>, message: string): <R, E>(self: STM<A, E, R>) => STM<A, E, R>
  <R, E, A, B extends A>(self: STM<A, E, R>, refinement: Refinement<A, B>, message: string): STM<B, E, R>
  <A, E, R>(self: STM<A, E, R>, predicate: Predicate<A>, message: string): STM<A, E, R>
}
```
