# mapEffect

Returns a new schedule that maps the output of this schedule through the
specified effectful function.

To import and use `mapEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapEffect
```

**Signature**

```ts
export declare const mapEffect: {
  <Out, Out2, R2>(
    f: (out: Out) => Effect.Effect<Out2, never, R2>
  ): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In, R2 | R>
  <Out, In, R, Out2, R2>(
    self: Schedule<Out, In, R>,
    f: (out: Out) => Effect.Effect<Out2, never, R2>
  ): Schedule<Out2, In, R | R2>
}
```
