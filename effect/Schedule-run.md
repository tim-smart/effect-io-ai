Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.run

Runs a schedule using the provided inputs and collects all outputs.

**Details**

This function executes a given schedule with a sequence of input values and
accumulates all outputs into a `Chunk`. The schedule starts execution at the
specified `now` timestamp and proceeds according to its defined behavior.

This is useful for batch processing, simulating execution, or testing
schedules with predefined input sequences.

**Signature**

```ts
declare const run: { <In>(now: number, input: Iterable<In>): <Out, R>(self: Schedule<Out, In, R>) => Effect.Effect<Chunk.Chunk<Out>, never, R>; <Out, In, R>(self: Schedule<Out, In, R>, now: number, input: Iterable<In>): Effect.Effect<Chunk.Chunk<Out>, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1732)

Since v2.0.0