# pollAndUpdate

An effect that polls for a value and uses the value to update the metric.

To import and use `pollAndUpdate` from the "Polling" module:

```ts
import * as Polling from '@effect/io/Metric/Polling'

// Can be accessed like this
Polling.pollAndUpdate
```

**Signature**

```ts
export declare const pollAndUpdate: <Type, In, R, E, Out>(
  self: PollingMetric<Type, In, R, E, Out>
) => Effect.Effect<R, E, void>
```
