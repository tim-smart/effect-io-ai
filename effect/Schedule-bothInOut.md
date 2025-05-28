Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.bothInOut

Combines two schedules, preserving both their inputs and outputs.

**Details**

This function merges two schedules so that both their input types and output
types are retained. When executed, the resulting schedule will take inputs
from both original schedules and produce a tuple containing both outputs.

It recurs if either schedule wants to continue, using the shorter delay.

This is useful when you want to track multiple schedules simultaneously,
ensuring that both receive the same inputs and produce combined results.

**Signature**

```ts
declare const bothInOut: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], readonly [In, In2], R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>): Schedule<[Out, Out2], readonly [In, In2], R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L345)

Since v2.0.0