# metricLabels

Retrieves the metric labels associated with the current scope.

To import and use `metricLabels` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.metricLabels
undefined

**Signature**

```ts
export declare const metricLabels: Effect<readonly MetricLabel.MetricLabel[], never, never>
```
