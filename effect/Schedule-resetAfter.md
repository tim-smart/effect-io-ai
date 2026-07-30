Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.resetAfter

Returns a new schedule that automatically resets to its initial state after a
period of inactivity defined by `duration`.

**Details**

This function modifies a schedule so that if no inputs are received for the
specified `duration`, the schedule resets as if it were new.

**See**

- `resetWhen` If you need to reset based on output values.

**Signature**

```ts
declare const resetAfter: { (duration: Duration.DurationInput): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, duration: Duration.DurationInput): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1695)

Since v2.0.0