# check

Filters schedule executions based on a custom condition.

**Details**

This function modifies a schedule by applying a custom test function to each
input-output pair. The test function determines whether the schedule should
continue or stop. If the function returns `true`, the schedule proceeds as
usual; if it returns `false`, the schedule terminates.

This is useful for conditional retries, custom stop conditions, or
dynamically controlling execution based on observed inputs and outputs.

To import and use `check` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.check
```

**Signature**

```ts
export declare const check: {
  <In, Out>(test: (input: In, output: Out) => boolean): <R>(self: Schedule<Out, In, R>) => Schedule<Out, In, R>
  <Out, In, R>(self: Schedule<Out, In, R>, test: (input: In, output: Out) => boolean): Schedule<Out, In, R>
}
```
