# zipLeft

The same as {@link intersect} but ignores the right output.

To import and use `zipLeft` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>
  ): Schedule<Out, In & In2, R | R2>
}
```
