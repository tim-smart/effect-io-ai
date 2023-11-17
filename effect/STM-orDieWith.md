# orDieWith

Keeps none of the errors, and terminates the fiber running the `STM` effect
with them, using the specified function to convert the `E` into a defect.

To import and use `orDieWith` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.orDieWith
```

**Signature**

```ts
export declare const orDieWith: {
  <E>(f: (error: E) => unknown): <R, A>(self: STM<R, E, A>) => STM<R, never, A>
  <R, A, E>(self: STM<R, E, A>, f: (error: E) => unknown): STM<R, never, A>
}
```
