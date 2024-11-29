# check

Returns a new schedule that passes each input and output of this schedule
to the specified function, and then determines whether or not to continue
based on the return value of the function.

To import and use `check` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.check
undefined

**Signature**

```ts
export declare const check: {
  <In, Out>(test: (input: In, output: Out) => boolean): <R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, test: (input: In, output: Out) => boolean): Schedule<Out, In, R>
}
```
