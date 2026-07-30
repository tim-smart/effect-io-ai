Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.fromDelay

Creates a schedule that recurs once after a specified duration.

**Details**

This schedule executes a single time after waiting for the given duration.
Once it has executed, it does not repeat.

**See**

- `fromDelays` If you need to create a schedule with multiple delays.

**Signature**

```ts
declare const fromDelay: (delay: Duration.DurationInput) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1079)

Since v2.0.0