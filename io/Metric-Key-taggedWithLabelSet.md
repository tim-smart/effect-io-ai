# taggedWithLabelSet

Returns a new `MetricKey` with the specified tags appended.

Part of the `Key` module, imported from `@effect/io/Metric/Key`.

**Signature**

```ts
export declare const taggedWithLabelSet: {
  (extraTags: HashSet.HashSet<MetricLabel.MetricLabel>): <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>
  ) => MetricKey<Type>
  <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>,
    extraTags: HashSet.HashSet<MetricLabel.MetricLabel>
  ): MetricKey<Type>
}
```
