## hourOfDay

Creates a schedule that recurs at a specific hour of each day.

**Details**

This schedule triggers once per day at the specified `hour`, starting at zero
minutes of that hour. The schedule produces a count of executions (`0, 1, 2,
...`), indicating how many times it has been triggered.

The `hour` parameter must be between `0` (midnight) and `23` (11 PM). It is
validated lazily, meaning an invalid value will cause errors only when the
schedule is executed.

This is useful for scheduling daily recurring tasks at a fixed time, such as
running batch jobs or refreshing data.

**Signature**

```ts
declare const hourOfDay: (hour: number) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L696)

Since v2.0.0