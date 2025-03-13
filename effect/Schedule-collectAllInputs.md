Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.collectAllInputs

A schedule that collects all inputs into a `Chunk`.

**Details**

This function creates a schedule that never terminates and continuously
collects every input it receives into a `Chunk`. Each time the schedule runs,
it appends the new input to the collected list.

This is useful when you need to track all received inputs over time, such as
logging user actions, recording retry attempts, or accumulating data for
later processing.

**See**

- `collectAllOutputs` If you need to collect outputs instead of
inputs.

**Signature**

```ts
declare const collectAllInputs: <A>() => Schedule<Chunk.Chunk<A>, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L422)

Since v2.0.0