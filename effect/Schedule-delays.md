Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.delays

Transforms a schedule to output the delay between each occurrence.

**Details**

This function modifies an existing schedule so that instead of producing its
original output, it now returns the delay between each scheduled execution.

**Signature**

```ts
declare const delays: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Duration.Duration, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L823)

Since v2.0.0