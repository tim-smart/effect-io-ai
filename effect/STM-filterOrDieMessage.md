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
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>, message: string): <R, E>(self: STM<R, E, A>) => STM<R, E, B>
  <A>(predicate: Predicate<NoInfer<A>>, message: string): <R, E>(self: STM<R, E, A>) => STM<R, E, A>
  <R, E, A, B extends A>(self: STM<R, E, A>, refinement: Refinement<A, B>, message: string): STM<R, E, B>
  <R, E, A>(self: STM<R, E, A>, predicate: Predicate<A>, message: string): STM<R, E, A>
}
```
