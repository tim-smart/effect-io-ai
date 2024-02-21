# summarized

Summarizes a `STM` effect by computing a provided value before and after
execution, and then combining the values to produce a summary, together
with the result of execution.

To import and use `summarized` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.summarized
```

**Signature**

```ts
export declare const summarized: {
  <A2, E2, R2, A3>(
    summary: STM<A2, E2, R2>,
    f: (before: A2, after: A2) => A3
  ): <A, E, R>(self: STM<A, E, R>) => STM<[A3, A], E2 | E, R2 | R>
  <A, E, R, A2, E2, R2, A3>(
    self: STM<A, E, R>,
    summary: STM<A2, E2, R2>,
    f: (before: A2, after: A2) => A3
  ): STM<[A3, A], E | E2, R | R2>
}
```
