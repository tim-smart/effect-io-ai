## spaced

Returns a schedule that recurs continuously, with each repetition
spaced by the specified `duration` from the last run.

**Details**

This schedule ensures that executions occur at a fixed interval,
maintaining a consistent delay between repetitions. The delay starts
from the end of the last execution, not from the schedule start time.

**See**

- `fixed` If you need to run at a fixed interval from the start.

**Signature**

```ts
declare const spaced: (duration: Duration.DurationInput) => Schedule<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1755)

Since v2.0.0