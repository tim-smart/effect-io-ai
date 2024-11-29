# jitteredWith

Returns a new schedule that randomly modifies the size of the intervals of
this schedule.

The new interval size is between `min * old interval size` and `max * old
interval size`.

To import and use `jitteredWith` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.jitteredWith
undefined

**Signature**

```ts
export declare const jitteredWith: {
  (options: {
    min?: number | undefined
    max?: number | undefined
  }): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(
    self: Schedule<Out, In, R>,
    options: { min?: number | undefined; max?: number | undefined }
  ): Schedule<Out, In, R>
}
```
