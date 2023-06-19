# taggedWithLabelsInput

Returns a new metric, which is identical in every way to this one, except
dynamic tags are added based on the update values. Note that the metric
returned by this method does not return any useful information, due to the
dynamic nature of the added tags.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const taggedWithLabelsInput: {
  <In>(f: (input: In) => Iterable<MetricLabel.MetricLabel>): <Type, Out>(
    self: Metric<Type, In, Out>
  ) => Metric<Type, In, void>
  <Type, In, Out>(self: Metric<Type, In, Out>, f: (input: In) => Iterable<MetricLabel.MetricLabel>): Metric<
    Type,
    In,
    void
  >
}
```
