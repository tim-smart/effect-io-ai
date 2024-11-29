# zipWith

Zips this exit together with that exit using the specified combination
functions.

To import and use `zipWith` from the "Exit" module:

ts
import \* as Exit from "effect/Exit"
// Can be accessed like this
Exit.zipWith
undefined

**Signature**

```ts
export declare const zipWith: {
  <B, E2, A, C, E>(
    that: Exit<B, E2>,
    options: {
      readonly onSuccess: (a: A, b: B) => C
      readonly onFailure: (cause: Cause.Cause<E>, cause2: Cause.Cause<E2>) => Cause.Cause<any>
    }
  ): (self: Exit<A, E>) => Exit<C, any>
  <A, E, B, E2, C>(
    self: Exit<A, E>,
    that: Exit<B, E2>,
    options: {
      readonly onSuccess: (a: A, b: B) => C
      readonly onFailure: (cause: Cause.Cause<E>, cause2: Cause.Cause<E2>) => Cause.Cause<E | E2>
    }
  ): Exit<C, E | E2>
}
```
