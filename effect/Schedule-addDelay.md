# addDelay

Returns a new schedule with the given delay added to every interval defined
by this schedule.

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
