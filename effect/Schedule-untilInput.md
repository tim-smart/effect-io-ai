# untilInput

Returns a new schedule that stops execution when the given predicate on the
input evaluates to `true`.

**Details**

This function modifies an existing schedule so that it continues executing
only while the provided predicate returns `false` for incoming inputs. Once
an input satisfies the condition, the schedule terminates immediately.

To import and use `untilInput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.untilInput
```

**Signature**

```ts
export declare const untilInput: {
  <In>(f: Predicate<In>): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, f: Predicate<In>): Schedule<Out, In, R>
}
```
