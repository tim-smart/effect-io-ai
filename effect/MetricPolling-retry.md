# retry

Returns a new polling metric whose poll function will be retried with the
specified retry policy.

To import and use `retry` from the "MetricPolling" module:

```ts
import * as MetricPolling from "effect/MetricPolling"
// Can be accessed like this
MetricPolling.retry
```

**Signature**

```ts
export declare const retry: {
  <R2, E, _>(
    policy: Schedule.Schedule<R2, E, _>
  ): <Type, In, R, Out>(self: MetricPolling<Type, In, R, E, Out>) => MetricPolling<Type, In, R2 | R, E, Out>
  <Type, In, R, Out, R2, E, _>(
    self: MetricPolling<Type, In, R, E, Out>,
    policy: Schedule.Schedule<R2, E, _>
  ): MetricPolling<Type, In, R | R2, E, Out>
}
```
