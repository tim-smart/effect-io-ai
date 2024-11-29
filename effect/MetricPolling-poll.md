# poll

An effect that polls a value that may be fed to the metric.

To import and use `poll` from the "MetricPolling" module:

ts
import \* as MetricPolling from "effect/MetricPolling"
// Can be accessed like this
MetricPolling.poll
undefined

**Signature**

```ts
export declare const poll: <Type, In, R, E, Out>(self: MetricPolling<Type, In, R, E, Out>) => Effect.Effect<In, E, R>
```
