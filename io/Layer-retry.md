# retry

Retries constructing this layer according to the specified schedule.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const retry: {
  <RIn2, E, X>(schedule: Schedule.Schedule<RIn2, E, X>): <RIn, ROut>(
    self: Layer<RIn, E, ROut>
  ) => Layer<RIn2 | RIn, E, ROut>
  <RIn, E, ROut, RIn2, X>(self: Layer<RIn, E, ROut>, schedule: Schedule.Schedule<RIn2, E, X>): Layer<
    RIn | RIn2,
    E,
    ROut
  >
}
```
