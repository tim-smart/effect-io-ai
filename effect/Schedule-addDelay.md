# addDelay

Adds a delay to every interval in a schedule.

**Details**

This function modifies a given schedule by applying an additional delay to
every interval it defines. The delay is determined by the provided function,
which takes the schedule's output and returns a delay duration.

To import and use `addDelay` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.addDelay
```

**Signature**

```ts
export declare const addDelay: {
  <Out>(f: (out: Out) => Duration.DurationInput): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, f: (out: Out) => Duration.DurationInput): Schedule<Out, In, R>
}
```
