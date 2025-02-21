# delays

Transforms a schedule to output the delay between each occurrence.

**Details**

This function modifies an existing schedule so that instead of producing its
original output, it now returns the delay between each scheduled execution.

To import and use `delays` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delays
```

**Signature**

```ts
export declare const delays: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Duration.Duration, In, R>
```
