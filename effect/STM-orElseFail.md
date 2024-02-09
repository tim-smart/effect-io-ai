# orElseFail

Tries this effect first, and if it fails or retries, fails with the
specified error.

To import and use `orElseFail` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.orElseFail
```

**Signature**

```ts
export declare const orElseFail: {
  <E2>(error: LazyArg<E2>): <A, E, R>(self: STM<A, E, R>) => STM<A, E2, R>
  <R, E, A, E2>(self: STM<A, E, R>, error: LazyArg<E2>): STM<A, E2, R>
}
```
