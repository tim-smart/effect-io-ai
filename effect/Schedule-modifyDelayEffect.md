Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.modifyDelayEffect

Returns a new schedule that modifies the delay before execution using an
effectful function.

**Details**

This function takes an existing schedule and applies an effectful function
`f` to dynamically adjust the delay before each execution. The function
receives both the schedule's output (`out`) and the originally computed delay
(`duration`), returning a new adjusted delay wrapped in an `Effect`.

**See**

- `modifyDelay` If you need to use a pure function.

**Signature**

```ts
declare const modifyDelayEffect: { <Out, R2>(f: (out: Out, duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, R2>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>; <Out, In, R, R2>(self: Schedule<Out, In, R>, f: (out: Out, duration: Duration.Duration) => Effect.Effect<Duration.DurationInput, never, R2>): Schedule<Out, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1382)

Since v2.0.0