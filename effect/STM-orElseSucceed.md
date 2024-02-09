# orElseSucceed

Tries this effect first, and if it fails or retries, succeeds with the
specified value.

To import and use `orElseSucceed` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.orElseSucceed
```

**Signature**

```ts
export declare const orElseSucceed: {
  <A2>(value: LazyArg<A2>): <A, E, R>(self: STM<A, E, R>) => STM<A2 | A, never, R>
  <R, E, A, A2>(self: STM<A, E, R>, value: LazyArg<A2>): STM<A | A2, never, R>
}
```
