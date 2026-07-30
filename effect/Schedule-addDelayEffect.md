Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.addDelayEffect

Adds an effectfully computed delay to every interval in a schedule.

**Details**

This function modifies a given schedule by applying an additional delay to
each interval, where the delay is determined by an effectful function. The
function takes the schedule’s output and returns an effect that produces a
delay duration.

**See**

- `addDelay` If you need to compute the delay using a pure function.

**Signature**

```ts
declare const addDelayEffect: { <Out, R2>(f: (out: Out) => Effect.Effect<Duration.DurationInput, never, R2>): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R2 | R>; <Out, In, R, R2>(self: Schedule<Out, In, R>, f: (out: Out) => Effect.Effect<Duration.DurationInput, never, R2>): Schedule<Out, In, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L219)

Since v2.0.0