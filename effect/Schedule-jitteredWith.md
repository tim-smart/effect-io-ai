# jitteredWith

Returns a new schedule that randomly adjusts the interval size within a
user-defined range.

**Details**

This function modifies a schedule so that its delay between executions is
randomly varied within a specified range. Instead of using the default `0.8 -
1.2` range like {@link jittered}, this function allows customizing the `min`
and `max` multipliers.

The delay for each step will be adjusted within `min * original_interval` and
`max * original_interval`. If `min` and `max` are not provided, the defaults
are `0.8` and `1.2`, respectively.

This is useful for introducing randomness into scheduling behavior while
having precise control over the jitter range.

To import and use `jitteredWith` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.jitteredWith
```

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
