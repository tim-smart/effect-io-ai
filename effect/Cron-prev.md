Package: `effect`<br />
Module: `Cron`<br />

## Cron.prev

Returns the previous scheduled date/time for the given Cron instance.

**When to use**

Use to find the most recent occurrence of a cron schedule before a specific
date/time or before the current time.

**Details**

When no date/time is provided, the search starts from the current time.

**Gotchas**

The search is strict: if the supplied date/time already matches the schedule,
the result is the earlier occurrence.

**See**

- `next` for finding the next scheduled occurrence

**Signature**

```ts
declare const prev: (cron: Cron, now?: DateTime.DateTime.Input) => Date
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L785)

Since v3.20.0