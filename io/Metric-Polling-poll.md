# poll

An effect that polls a value that may be fed to the metric.

To import and use `poll` from the "Polling" module:

```ts
import * as Polling from '@effect/io/Metric/Polling'

// Can be accessed like this
Polling.poll
```

**Signature**

```ts
export declare const poll: <Type, In, R, E, Out>(self: PollingMetric<Type, In, R, E, Out>) => Effect.Effect<R, E, In>
```
