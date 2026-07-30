Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.recurUpTo

A schedule that recurs until the specified duration has elapsed.

**Details**

This schedule continues executing for the given `duration`, after which it
stops. The schedule outputs the elapsed time on each recurrence.

This is useful for limiting the duration of retries, enforcing time-based
constraints, or ensuring that an operation does not run indefinitely.

**Signature**

```ts
declare const recurUpTo: (duration: Duration.DurationInput) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1555)

Since v2.0.0