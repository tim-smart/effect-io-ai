# as

Transforms a schedule to always produce a constant output.

**Details**

This function modifies a given schedule so that instead of returning its
computed outputs, it always returns a constant value.

This is useful when you need a schedule for timing but don’t care about its
actual output, or when you want to standardize results across different
scheduling strategies.

To import and use `as` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.as
```

**Signature**

```ts
export declare const as: {
  <Out2>(out: Out2): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In, R>
  <Out, In, R, Out2>(self: Schedule<Out, In, R>, out: Out2): Schedule<Out2, In, R>
}
```
