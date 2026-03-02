Package: `effect`<br />
Module: `Effect`<br />

## Effect.track

Updates the `Metric` every time the `Effect` is executed.

Also accepts an optional function which can be used to map the `Exit` value
of the `Effect` into a valid `Input` for the `Metric`.

**Example**

```ts
import { Effect, Metric } from "effect"

const counter = Metric.counter("effect_executions", {
  description: "Counts effect executions"
}).pipe(Metric.withConstantInput(1))

const program = Effect.succeed("Hello").pipe(
  Effect.track(counter)
)

// This will increment the counter by 1 when executed
Effect.runPromise(program).then(() =>
  Effect.runPromise(Metric.value(counter)).then(console.log)
  // Output: { count: 1, incremental: false }
)
```

**Example**

```ts
import { Effect, Exit, Metric } from "effect"

// Track different exit types with custom mapping
const exitTracker = Metric.frequency("exit_types", {
  description: "Tracks success/failure/defect counts"
})

const mapExitToString = (exit: Exit.Exit<string, Error>) => {
  if (Exit.isSuccess(exit)) return "success"
  if (Exit.isFailure(exit)) return "failure"
  return "defect"
}

const effect = Effect.succeed("result").pipe(
  Effect.track(exitTracker, mapExitToString)
)
```

**Signature**

```ts
declare const track: { <Input, State, E, A>(metric: Metric.Metric<Input, State>, f: (exit: Exit.Exit<A, E>) => Input): <E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <State, E, A>(metric: Metric.Metric<Exit.Exit<NoInfer<A>, NoInfer<E>>, State>): <R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R, Input, State>(self: Effect<A, E, R>, metric: Metric.Metric<Input, State>, f: (exit: Exit.Exit<A, E>) => Input): Effect<A, E, R>; <A, E, R, State>(self: Effect<A, E, R>, metric: Metric.Metric<Exit.Exit<NoInfer<A>, NoInfer<E>>, State>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L13354)

Since v4.0.0