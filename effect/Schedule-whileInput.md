# whileInput

Returns a new schedule that continues execution as long as the given
predicate on the input is true.

**Details**

This function modifies an existing schedule so that it only continues
execution while a specified predicate holds true for its input. If the
predicate evaluates to `false` at any step, the schedule stops.

To import and use `whileInput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.whileInput
```

**Signature**

```ts
export declare const whileInput: {
  <In>(f: Predicate<In>): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<In>): Schedule<Out, In, R>
}
```
