Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.modifyDelay

Returns a new schedule that modifies the delay between executions using a
custom function.

**Details**

This function transforms an existing schedule by applying `f` to modify the
delay before each execution. The function receives both the schedule's output
(`out`) and the originally computed delay (`duration`), and returns a new
adjusted delay.

**See**

- `modifyDelayEffect` If you need to use an effectful function.

**Signature**

```ts
declare const modifyDelay: { <Out>(f: (out: Out, duration: Duration.Duration) => Duration.DurationInput): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: (out: Out, duration: Duration.Duration) => Duration.DurationInput): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1356)

Since v2.0.0