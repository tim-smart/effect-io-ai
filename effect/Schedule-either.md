# either

Alias of {@link union}.

To import and use `either` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.either
```

**Signature**

```ts
export declare const either: {
  <Out2, In2, R2>(
    that: Schedule<Out2, In2, R2>
  ): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>
  <Out, In, R, Out2, In2, R2>(
    self: Schedule<Out, In, R>,
    that: Schedule<Out2, In2, R2>
  ): Schedule<[Out, Out2], In & In2, R | R2>
}
```
