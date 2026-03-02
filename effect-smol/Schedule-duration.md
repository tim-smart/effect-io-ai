Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.duration

Returns a schedule that recurs once after the specified duration.

The schedule outputs the configured duration for its first recurrence and
then completes.

**Signature**

```ts
declare const duration: (durationInput: Duration.Input) => Schedule<Duration.Duration>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1574)

Since v2.0.0