Package: `effect`<br />
Module: `Layer`<br />

## Layer.retry

Retries constructing this layer according to the specified schedule.

**Signature**

```ts
declare const retry: { <X, E, RIn2>(schedule: Schedule.Schedule<X, NoInfer<E>, RIn2>): <ROut, RIn>(self: Layer<ROut, E, RIn>) => Layer<ROut, E, RIn2 | RIn>; <ROut, E, RIn, X, RIn2>(self: Layer<ROut, E, RIn>, schedule: Schedule.Schedule<X, E, RIn2>): Layer<ROut, E, RIn | RIn2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L643)

Since v2.0.0