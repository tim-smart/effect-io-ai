Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.toStepWithMetadata

Extracts a step function from a Schedule that provides metadata about each
execution. It will also handle sleeping for the computed delay.

**Signature**

```ts
declare const toStepWithMetadata: <Output, Input, Error, Env>(schedule: Schedule<Output, Input, Error, Env>) => Effect<(input: Input) => Pull.Pull<Metadata<Output, Input>, Error, Output, Env>, never, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L450)

Since v4.0.0