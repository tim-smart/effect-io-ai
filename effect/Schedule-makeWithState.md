Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.makeWithState

Creates a new schedule with a custom state and step function.

**Details**

This function constructs a `Schedule` by defining its initial state and a
step function, which determines how the schedule progresses over time. The
step function is called on each iteration with the current time, an input
value, and the schedule's current state. It returns the next state, an output
value, and a decision on whether the schedule should continue or stop.

This function is useful for creating custom scheduling logic that goes beyond
predefined schedules like fixed intervals or exponential backoff. It allows
full control over how the schedule behaves at each step.

**Signature**

```ts
declare const makeWithState: <S, In, Out, R = never>(initial: S, step: (now: number, input: In, state: S) => Effect.Effect<readonly [S, Out, ScheduleDecision.ScheduleDecision], never, R>) => Schedule<Out, In, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L166)

Since v2.0.0