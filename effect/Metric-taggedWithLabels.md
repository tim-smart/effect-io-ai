# taggedWithLabels

Returns a new metric, which is identical in every way to this one, except
the specified tags have been added to the tags of this metric.

To import and use `taggedWithLabels` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.taggedWithLabels
```

**Signature**

```ts
export declare const taggedWithLabels: {
  <Type, In, Out>(extraTags: Iterable<MetricLabel.MetricLabel>): (self: Metric<Type, In, Out>) => Metric<Type, In, Out>
  <Type, In, Out>(self: Metric<Type, In, Out>, extraTags: Iterable<MetricLabel.MetricLabel>): Metric<Type, In, Out>
}
```
