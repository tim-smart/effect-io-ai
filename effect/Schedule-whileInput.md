# whileInput

Returns a new schedule that continues for as long as the specified predicate
on the input evaluates to true.

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
