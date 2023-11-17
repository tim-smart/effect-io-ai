# refineOrDieWith

Keeps some of the errors, and terminates the fiber with the rest, using the
specified function to convert the `E` into a `Throwable`.

To import and use `refineOrDieWith` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.refineOrDieWith
```

**Signature**

```ts
export declare const refineOrDieWith: {
  <E, E2>(pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): <R, A>(self: STM<R, E, A>) => STM<R, E2, A>
  <R, A, E, E2>(self: STM<R, E, A>, pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): STM<R, E2, A>
}
```
