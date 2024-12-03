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
  ): <Out, R>(self: Schedule<Out, In, R>) => Effect.Effect<Chunk.Chunk<Out>, never, R>
  <Out, In, R>(self: Schedule<Out, In, R>, now: number, input: Iterable<In>): Effect.Effect<Chunk.Chunk<Out>, never, R>
}
```
