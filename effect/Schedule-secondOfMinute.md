Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.secondOfMinute

Cron-like schedule that recurs at a specific second of each minute.

**Details**

This schedule triggers at the specified `second` of each minute,
starting at zero nanoseconds. It produces a count of executions
(0, 1, 2, ...). The `second` parameter is validated lazily, meaning
invalid values will only be caught at runtime.

**Signature**

```ts
declare const secondOfMinute: (second: number) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L657)

Since v2.0.0