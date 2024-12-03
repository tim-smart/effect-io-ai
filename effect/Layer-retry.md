# retry

Retries constructing this layer according to the specified schedule.

To import and use `retry` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.retry
```

**Signature**

```ts
export declare const retry: {
  <X, E, RIn2>(
    schedule: Schedule.Schedule<X, E, RIn2>
  ): <ROut, RIn>(self: Layer<ROut, E, RIn>) => Layer<ROut, E, RIn2 | RIn>
  <ROut, E, RIn, X, RIn2>(
    self: Layer<ROut, E, RIn>,
    schedule: Schedule.Schedule<X, E, RIn2>
  ): Layer<ROut, E, RIn | RIn2>
}
```
