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
  <E>(f: (error: E) => unknown): <A, R>(self: STM<A, E, R>) => STM<A, never, R>
  <A, E, R>(self: STM<A, E, R>, f: (error: E) => unknown): STM<A, never, R>
}
```
