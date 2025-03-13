Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.cron

Creates a schedule that recurs based on a cron expression.

**Details**

This schedule automatically executes at intervals defined by a cron
expression. It triggers at the beginning of each matched interval and
produces timestamps representing the start and end of the cron window.

The cron `expression` is validated lazily, meaning errors may only be
detected when the schedule is executed.

**Signature**

```ts
declare const cron: { (cron: Cron.Cron): Schedule<[number, number]>; (expression: string, tz?: DateTime.TimeZone | string): Schedule<[number, number]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L639)

Since v2.0.0