# retry

Returns a new polling metric whose poll function will be retried with the
specified retry policy.

To import and use `retry` from the "Polling" module:

```ts
import * as Polling from '@effect/io/Metric/Polling'

// Can be accessed like this
Polling.retry
```

**Signature**

```ts
export declare const retry: {
  <R2, E, _>(policy: Schedule.Schedule<R2, E, _>): <Type, In, R, Out>(
    self: PollingMetric<Type, In, R, E, Out>
  ) => PollingMetric<Type, In, R2 | R, E, Out>
  <Type, In, R, Out, R2, E, _>(
    self: PollingMetric<Type, In, R, E, Out>,
    policy: Schedule.Schedule<R2, E, _>
  ): PollingMetric<Type, In, R | R2, E, Out>
}
```