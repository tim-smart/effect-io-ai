Package: `effect`<br />
Module: `ExecutionPlan`<br />

## ExecutionPlan.ExecutionPlan

A `ExecutionPlan` can be used with `Effect.withExecutionPlan` or `Stream.withExecutionPlan`, allowing you to provide different resources for each step of execution until the effect succeeds or the plan is exhausted.

```ts
import type { Layer } from "effect"
import { Effect, ExecutionPlan, Schedule } from "effect"
import type { LanguageModel } from "effect/unstable/ai"

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
export interface ExecutionPlan<
  Config extends {
    provides: any
    input: any
    error: any
    requirements: any
  }
> extends Pipeable {
  readonly [TypeId]: TypeId
  readonly steps: NonEmptyReadonlyArray<{
    readonly provide:
      | Context.Context<Config["provides"]>
      | Layer.Layer<Config["provides"], Config["error"], Config["requirements"]>
    readonly attempts?: number | undefined
    readonly while?:
      | ((input: Config["input"]) => Effect.Effect<boolean, Config["error"], Config["requirements"]>)
      | undefined
    readonly schedule?: Schedule.Schedule<any, Config["input"], Config["requirements"]> | undefined
  }>

  /**
   * Returns an equivalent `ExecutionPlan` with the requirements satisfied,
   * using the current context.
   */
  readonly withRequirements: Effect.Effect<
    ExecutionPlan<{
      provides: Config["provides"]
      input: Config["input"]
      error: Config["error"]
      requirements: never
    }>,
    never,
    Config["requirements"]
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ExecutionPlan.ts#L76)

Since v3.16.0