# pollAndUpdate

An effect that polls for a value and uses the value to update the metric.

To import and use `pollAndUpdate` from the "MetricPolling" module:

ts
import \* as MetricPolling from "effect/MetricPolling"
// Can be accessed like this
MetricPolling.pollAndUpdate
undefined

**Signature**

```ts
export declare const pollAndUpdate: <Type, In, R, E, Out>(
  self: MetricPolling<Type, In, R, E, Out>
) => Effect.Effect<void, E, R>
```
