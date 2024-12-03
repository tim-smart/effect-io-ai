# untilInput

Returns a new schedule that continues until the specified predicate on the
input evaluates to true.

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
