Package: `effect`<br />
Module: `Effect`<br />

## Effect.scheduleFrom

Runs an effect repeatedly according to a schedule, starting from a specified
input value.

**Details**

This function allows you to repeatedly execute an effect based on a schedule.
The schedule starts with the given `initial` input value, which is passed to
the first execution. Subsequent executions of the effect are controlled by
the schedule's rules, using the output of the previous iteration as the input
for the next one.

The returned effect will complete when the schedule ends or the effect fails,
propagating the error.

**Signature**

```ts
declare const scheduleFrom: { <R2, In, Out>(initial: In, schedule: Schedule.Schedule<Out, In, R2>): <E, R>(self: Effect<In, E, R>) => Effect<Out, E, R2 | R>; <In, E, R, R2, Out>(self: Effect<In, E, R>, initial: In, schedule: Schedule.Schedule<Out, In, R2>): Effect<Out, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10188)

Since v2.0.0