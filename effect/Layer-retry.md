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
  <RIn2, E, X>(
    schedule: Schedule.Schedule<RIn2, E, X>
  ): <RIn, ROut>(self: Layer<ROut, E, RIn>) => Layer<ROut, E, RIn2 | RIn>
  <RIn, E, ROut, RIn2, X>(
    self: Layer<ROut, E, RIn>,
    schedule: Schedule.Schedule<RIn2, E, X>
  ): Layer<ROut, E, RIn | RIn2>
}
```
