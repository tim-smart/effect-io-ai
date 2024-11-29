# mapInput

Returns a new schedule that deals with a narrower class of inputs than this
schedule.

To import and use `mapInput` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapInput
undefined

**Signature**

```ts
export declare const mapInput: {
  <In, In2>(f: (in2: In2) => In): <Out, R>(self: Schedule<Out, In, R>) => Schedule<Out, In2, R>
  <Out, In, R, In2>(self: Schedule<Out, In, R>, f: (in2: In2) => In): Schedule<Out, In2, R>
}
```
