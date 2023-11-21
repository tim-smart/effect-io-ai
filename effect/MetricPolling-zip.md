# zip

Zips this polling metric with the specified polling metric.

To import and use `zip` from the "MetricPolling" module:

```ts
import * as MetricPolling from "effect/MetricPolling"
// Can be accessed like this
MetricPolling.zip
```

**Signature**

```ts
export declare const zip: {
  <Type2, In2, R2, E2, Out2>(
    that: MetricPolling<Type2, In2, R2, E2, Out2>
  ): <Type, In, R, E, Out>(
    self: MetricPolling<Type, In, R, E, Out>
  ) => MetricPolling<readonly [Type, Type2], readonly [In, In2], R2 | R, E2 | E, [Out, Out2]>
  <Type, In, R, E, Out, Type2, In2, R2, E2, Out2>(
    self: MetricPolling<Type, In, R, E, Out>,
    that: MetricPolling<Type2, In2, R2, E2, Out2>
  ): MetricPolling<readonly [Type, Type2], readonly [In, In2], R | R2, E | E2, [Out, Out2]>
}
```
