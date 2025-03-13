Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectAllOutputs

Collects all outputs of a schedule into a `Chunk`.

**Details**

This function modifies a given schedule so that instead of returning
individual outputs, it accumulates them into a `Chunk`. The schedule
continues to run, appending each output to the collected list.

This is useful when you need to track all results over time, such as logging
outputs, aggregating data, or keeping a history of previous values.

**See**

- `collectAllInputs` If you need to collect inputs instead of
outputs.

**Signature**

```ts
declare const collectAllOutputs: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Chunk.Chunk<Out>, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L442)

Since v2.0.0