# as

Returns a new schedule that maps this schedule to a constant output.

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
