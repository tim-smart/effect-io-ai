# mapInputEffect

Returns a new schedule that deals with a narrower class of inputs than this
schedule.

To import and use `mapInputEffect` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapInputEffect
undefined

**Signature**

```ts
export declare const mapInputEffect: {
  <In2, In, R2>(
    f: (in2: In2) => Effect.Effect<In, never, R2>
  ): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In2, R2 | R>
  <Out, In, R, In2, R2>(
    self: Schedule<Out, In, R>,
    f: (in2: In2) => Effect.Effect<In, never, R2>
  ): Schedule<Out, In2, R | R2>
}
```
