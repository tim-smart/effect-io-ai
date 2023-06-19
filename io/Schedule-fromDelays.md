# fromDelays

A schedule that recurs once for each of the specified durations, delaying
each time for the length of the specified duration. Returns the length of
the current duration between recurrences.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const fromDelays: (
  delay: Duration.Duration,
  ...delays: Array<Duration.Duration>
) => Schedule<never, unknown, Duration.Duration>
```
