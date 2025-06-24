Package: `effect`<br />
Module: `Effect`<br />

## Effect.withTracerEnabled

Disable the tracer for the given Effect.

**Example**

```ts
import { Effect } from "effect"

Effect.succeed(42).pipe(
  Effect.withSpan("my-span"),
  // the span will not be registered with the tracer
  Effect.withTracerEnabled(false)
)
```

**Signature**

```ts
declare const withTracerEnabled: { (enabled: boolean): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, enabled: boolean): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12909)

Since v2.0.0