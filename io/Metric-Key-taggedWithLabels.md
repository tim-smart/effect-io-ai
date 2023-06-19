# taggedWithLabels

Returns a new `MetricKey` with the specified tags appended.

Part of the `Key` module, imported from `@effect/io/Metric/Key`.

**Signature**

```ts
export declare const taggedWithLabels: {
  (extraTags: Iterable<MetricLabel.MetricLabel>): <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>
  ) => MetricKey<Type>
  <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>,
    extraTags: Iterable<MetricLabel.MetricLabel>
  ): MetricKey<Type>
}
```
