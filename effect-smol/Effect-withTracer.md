Package: `effect`<br />
Module: `Effect`<br />

## Effect.withTracer

Provides a tracer to an effect.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.log("Using tracer")
  return "completed"
})

// withTracer provides a tracer to the effect context
// const traced = Effect.withTracer(program, customTracer)
```

**Signature**

```ts
declare const withTracer: { (value: Tracer): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(effect: Effect<A, E, R>, value: Tracer): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7480)

Since v2.0.0