Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.toStepWithMetadata

Extracts a step function from a `Schedule` that sleeps for each computed
delay and returns metadata for the completed step.

**When to use**

Use to drive a schedule manually while preserving the computed output,
delay, input, attempt, and elapsed timing metadata for each step.

**Details**

The returned step reads the current time from `Clock` when invoked, calls the
schedule step with that timestamp and input, sleeps for the returned
duration, and then yields `Metadata`.

**See**

- `toStep` for manually supplying the timestamp and handling the returned delay yourself
- `toStepWithSleep` for the same automatic sleeping behavior when only the schedule output is needed

**Signature**

```ts
declare const toStepWithMetadata: <Output, Input, Error, Env>(schedule: Schedule<Output, Input, Error, Env>) => Effect<(input: Input) => Pull.Pull<Metadata<Output, Input>, Error, Output, Env>, never, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L501)

Since v4.0.0