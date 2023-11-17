# run

Runs a schedule using the provided inputs, and collects all outputs.

To import and use `run` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.run
```

**Signature**

```ts
export declare const run: {
  <In>(
    now: number,
    input: Iterable<In>
  ): <Env, Out>(self: Schedule<Env, In, Out>) => Effect.Effect<Env, never, Chunk.Chunk<Out>>
  <Env, In, Out>(
    self: Schedule<Env, In, Out>,
    now: number,
    input: Iterable<In>
  ): Effect.Effect<Env, never, Chunk.Chunk<Out>>
}
```
