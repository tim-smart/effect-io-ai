# refineOrDie

Keeps some of the errors, and terminates the fiber with the rest.

To import and use `refineOrDie` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.refineOrDie
```

**Signature**

```ts
export declare const refineOrDie: {
  <E, E2>(pf: (error: E) => Option.Option<E2>): <R, A>(self: STM<A, E, R>) => STM<A, E2, R>
  <R, A, E, E2>(self: STM<A, E, R>, pf: (error: E) => Option.Option<E2>): STM<A, E2, R>
}
```
