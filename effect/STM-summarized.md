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
  <R2, E2, A2, A3>(
    summary: STM<R2, E2, A2>,
    f: (before: A2, after: A2) => A3
  ): <R, E, A>(self: STM<R, E, A>) => STM<R2 | R, E2 | E, [A3, A]>
  <R, E, A, R2, E2, A2, A3>(
    self: STM<R, E, A>,
    summary: STM<R2, E2, A2>,
    f: (before: A2, after: A2) => A3
  ): STM<R | R2, E | E2, [A3, A]>
}
```
