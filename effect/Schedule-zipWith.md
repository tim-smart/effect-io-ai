# zipWith

Equivalent to `intersect` followed by `map`.

To import and use `zipWith` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.zipWith
```

**Signature**

```ts
export declare const zipWith: {
  <Out2, In2, R2, Out, Out3>(
    that: Schedule<Out2, In2, R2>,
    f: (out: Out, out2: Out2) => Out3
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out3, In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2, Out3>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>,
    f: (out: Out, out2: Out2) => Out3
  ): Schedule<Out3, In & In2, R | R2>
}
```
