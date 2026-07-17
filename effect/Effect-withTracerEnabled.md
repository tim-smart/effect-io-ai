Package: `effect`<br />
Module: `Effect`<br />

## Effect.withTracerEnabled

Enables or disables tracing for spans created by the given effect.

**Details**

When `enabled` is `false`, spans created inside the effect are not registered
with the current tracer and do not propagate as normal trace parents.

**Example** (Enabling or disabling tracing)

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L7938)

Since v2.0.0