# map

Returns a new schedule that transforms its output using the specified
function.

**Details**

This function modifies an existing schedule so that its outputs are
transformed by the provided function `f`. The timing and recurrence behavior
of the schedule remain unchanged, but the values it produces are mapped to
new values.

This is useful when composing schedules where you need to adjust the output
format or apply additional processing.

To import and use `map` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.map
```

**Signature**

```ts
export declare const map: {
  <Out, Out2>(f: (out: Out) => Out2): <In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In, R>
  <Out, In, R, Out2>(self: Schedule<Out, In, R>, f: (out: Out) => Out2): Schedule<Out2, In, R>
}
```
