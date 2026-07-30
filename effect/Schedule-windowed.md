Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.windowed

Creates a schedule that divides time into fixed `interval`-long windows,
triggering execution at the start of each new window.

**Details**

This function produces a schedule that waits until the next time window
boundary before executing. Each window spans a fixed duration specified by
`interval`. If an action completes midway through a window, the schedule
waits until the next full window starts before proceeding.

For example, `windowed(Duration.seconds(10))` would produce a schedule as
follows:

```text
     10s        10s        10s       10s
|----------|----------|----------|----------|
|action------|sleep---|act|-sleep|action----|
```

**Signature**

```ts
declare const windowed: (interval: Duration.DurationInput) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L2138)

Since v2.0.0