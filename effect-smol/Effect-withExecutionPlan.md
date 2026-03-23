Package: `effect`<br />
Module: `Effect`<br />

## Effect.withExecutionPlan

Apply an `ExecutionPlan` to an effect, retrying with step-provided resources
until it succeeds or the plan is exhausted.

Each attempt updates `ExecutionPlan.CurrentMetadata` (attempt and step index),
and retry timing is derived per step (the first attempt uses the remaining
attempts schedule; later retries apply the step schedule at least once).

**Example**

```ts
import { Effect, ExecutionPlan, Layer, ServiceMap } from "effect"

const Endpoint = ServiceMap.Service<{ url: string }>("Endpoint")

const fetchUrl = Effect.gen(function*() {
  const endpoint = yield* Effect.service(Endpoint)
  if (endpoint.url === "bad") {
    return yield* Effect.fail("Unavailable")
  }
  return endpoint.url
})

const plan = ExecutionPlan.make(
  { provide: Layer.succeed(Endpoint, { url: "bad" }), attempts: 2 },
  { provide: Layer.succeed(Endpoint, { url: "good" }) }
)

const program = Effect.withExecutionPlan(fetchUrl, plan)
```

**Signature**

```ts
declare const withExecutionPlan: { <Input, Provides, PlanE, PlanR>(plan: ExecutionPlan<{ provides: Provides; input: Input; error: PlanE; requirements: PlanR; }>): <A, E extends Input, R>(effect: Effect<A, E, R>) => Effect<A, E | PlanE, Exclude<R, Provides> | PlanR>; <A, E extends Input, R, Provides, Input, PlanE, PlanR>(effect: Effect<A, E, R>, plan: ExecutionPlan<{ provides: Provides; input: Input; error: PlanE; requirements: PlanR; }>): Effect<A, E | PlanE, Exclude<R, Provides> | PlanR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4264)

Since v3.16.0