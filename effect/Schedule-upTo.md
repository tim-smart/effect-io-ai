Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.upTo

Returns a new schedule that limits execution to a fixed duration.

**Details**

This function modifies an existing schedule to stop execution after a
specified duration has passed. The schedule continues as normal until the
duration is reached, at which point it stops automatically.

**Signature**

```ts
declare const upTo: { (duration: Duration.DurationInput): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, duration: Duration.DurationInput): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L2018)

Since v2.0.0