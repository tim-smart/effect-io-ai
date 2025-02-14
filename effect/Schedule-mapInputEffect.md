# mapInputEffect

Transforms the input type of a schedule using an effectful function.

**Details**

This function modifies a schedule by applying an effectful transformation to
its inputs. Instead of directly receiving values of type `In`, the schedule
will now accept values of type `In2`, which are converted to `In` via an
effectful function `f`.

This is useful when the input transformation involves external dependencies,
such as API calls, database lookups, or other asynchronous computations.

To import and use `mapInputEffect` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapInputEffect
```

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
