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
  <E2>(error: LazyArg<E2>): <R, E, A>(self: STM<R, E, A>) => STM<R, E2, A>
  <R, E, A, E2>(self: STM<R, E, A>, error: LazyArg<E2>): STM<R, E2, A>
}
```
