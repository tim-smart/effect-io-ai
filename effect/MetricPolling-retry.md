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
  <X, E, R2>(
    policy: Schedule.Schedule<X, NoInfer<E>, R2>
  ): <Type, In, R, Out>(self: MetricPolling<Type, In, R, E, Out>) => MetricPolling<Type, In, R2 | R, E, Out>
  <Type, In, R, E, Out, X, R2>(
    self: MetricPolling<Type, In, R, E, Out>,
    policy: Schedule.Schedule<X, E, R2>
  ): MetricPolling<Type, In, R | R2, E, Out>
}
```
