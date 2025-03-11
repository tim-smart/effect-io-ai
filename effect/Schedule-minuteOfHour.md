## minuteOfHour

Creates a schedule that recurs every specified minute of each hour.

**Details**

This schedule triggers once per hour at the specified `minute`, starting
exactly at `minute:00` (zero seconds). The schedule produces a count of
executions (`0, 1, 2, ...`), representing how many times it has run.

The `minute` parameter must be between `0` and `59`. It is validated lazily,
meaning an invalid value will cause errors only when the schedule is
executed.

**Signature**

```ts
declare const minuteOfHour: (minute: number) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L675)

Since v2.0.0