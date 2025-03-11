## taggedWithLabelsInput

Returns a new metric, which is identical in every way to this one, except
dynamic tags are added based on the update values. Note that the metric
returned by this method does not return any useful information, due to the
dynamic nature of the added tags.

**Signature**

```ts
declare const taggedWithLabelsInput: { <In>(f: (input: In) => Iterable<MetricLabel.MetricLabel>): <Type, Out>(self: Metric<Type, In, Out>) => Metric<Type, In, void>; <Type, In, Out>(self: Metric<Type, In, Out>, f: (input: In) => Iterable<MetricLabel.MetricLabel>): Metric<Type, In, void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L477)

Since v2.0.0