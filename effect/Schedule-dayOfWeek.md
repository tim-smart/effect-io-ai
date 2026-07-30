Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.dayOfWeek

Creates a schedule that recurs on a specific day of the week.

**Details**

This schedule triggers at midnight on the specified day of the week. The
`day` parameter follows the standard convention where `Monday = 1` and
`Sunday = 7`. The schedule produces a count of executions, starting at 0 and
incrementing with each recurrence.

The `day` parameter is validated lazily, meaning errors may only be detected
when the schedule is executed.

**Signature**

```ts
declare const dayOfWeek: (day: number) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L737)

Since v2.0.0