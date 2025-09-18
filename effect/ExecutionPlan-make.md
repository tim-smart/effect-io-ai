Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.make

Create an `ExecutionPlan`, which can be used with `Effect.withExecutionPlan` or `Stream.withExecutionPlan`, allowing you to provide different resources for each step of execution until the effect succeeds or the plan is exhausted.

```ts
import type { LanguageModel } from "@effect/ai"
import type { Layer } from "effect"
import { Effect, ExecutionPlan, Schedule } from "effect"

declare const layerBad: Layer.Layer<LanguageModel.LanguageModel>
declare const layerGood: Layer.Layer<LanguageModel.LanguageModel>

const ThePlan = ExecutionPlan.make(
  {
    // First try with the bad layer 2 times with a 3 second delay between attempts
    provide: layerBad,
    attempts: 2,
    schedule: Schedule.spaced(3000)
  },
  // Then try with the bad layer 3 times with a 1 second delay between attempts
  {
    provide: layerBad,
    attempts: 3,
    schedule: Schedule.spaced(1000)
  },
  // Finally try with the good layer.
  //
  // If `attempts` is omitted, the plan will only attempt once, unless a schedule is provided.
  {
    provide: layerGood
  }
)

declare const effect: Effect.Effect<
  void,
  never,
  LanguageModel.LanguageModel
>
const withPlan: Effect.Effect<void> = Effect.withExecutionPlan(effect, ThePlan)
```

**Signature**

```ts
declare const make: <const Steps extends NonEmptyReadonlyArray<make.Step>>(...steps: Steps & { [K in keyof Steps]: make.Step; }) => ExecutionPlan<{ provides: make.StepProvides<Steps>; input: make.StepInput<Steps>; error: (Steps[number]["provide"] extends Context.Context<infer _P> | Layer.Layer<infer _P, infer E, infer _R> ? E : never) | (Steps[number]["while"] extends (input: infer _I) => Effect.Effect<infer _A, infer _E, infer _R> ? _E : never); requirements: (Steps[number]["provide"] extends Layer.Layer<infer _A, infer _E, infer R> ? R : never) | (Steps[number]["while"] extends (input: infer _I) => Effect.Effect<infer _A, infer _E, infer R> ? R : never) | (Steps[number]["schedule"] extends Schedule.Schedule<infer _O, infer _I, infer R> ? R : never); }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ExecutionPlan.ts#L170)

Since v3.16.0