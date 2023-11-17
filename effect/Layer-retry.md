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
  ): <RIn, ROut>(self: Layer<RIn, E, ROut>) => Layer<RIn2 | RIn, E, ROut>
  <RIn, E, ROut, RIn2, X>(
    self: Layer<RIn, E, ROut>,
    schedule: Schedule.Schedule<RIn2, E, X>
  ): Layer<RIn | RIn2, E, ROut>
}
```
