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
  <E, E2>(pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): <A, R>(self: STM<A, E, R>) => STM<A, E2, R>
  <A, E, R, E2>(self: STM<A, E, R>, pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): STM<A, E2, R>
}
```
