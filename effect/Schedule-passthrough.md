# passthrough

Transforms a schedule to pass through its inputs as outputs.

**Details**

This function modifies an existing schedule so that it returns its input
values instead of its original output values. The schedule's timing remains
unchanged, but its outputs are replaced with whatever inputs it receives.

To import and use `passthrough` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.passthrough
```

**Signature**

```ts
export declare const passthrough: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<In, In, R>
```
