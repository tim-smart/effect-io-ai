## delayed

Modifies a schedule by adding a computed delay before each execution.

**Details**

This function adjusts an existing schedule by applying a transformation to
its delays. Instead of using the default interval, each delay is modified
using the provided function `f`, which takes the current delay and returns a
new delay.

This is useful for dynamically adjusting wait times between executions, such
as introducing jitter, exponential backoff, or custom delay logic.

**See**

- `delayedEffect` If you need to compute the delay using an effectful function.

**Signature**

```ts
declare const delayed: { (f: (duration: Duration.Duration) => Duration.DurationInput): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>; <Out, In, R>(self: Schedule<Out, In, R>, f: (duration: Duration.Duration) => Duration.DurationInput): Schedule<Out, In, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L755)

Since v2.0.0