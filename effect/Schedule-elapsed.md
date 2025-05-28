Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.elapsed

Creates a schedule that tracks the total elapsed duration since it started.

**Details**

This schedule executes continuously and returns the total time that has
passed since the first execution. The duration keeps increasing with each
step, providing a way to measure elapsed time.

This is useful for tracking execution time, monitoring delays, or
implementing logic based on how long a process has been running.

**Signature**

```ts
declare const elapsed: Schedule<Duration.Duration, unknown, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L963)

Since v2.0.0