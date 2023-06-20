# taggedWithLabels

Returns a new `MetricKey` with the specified tags appended.

To import and use `taggedWithLabels` from the "Key" module:

```ts
import * as Key from '@effect/io/Metric/Key'

// Can be accessed like this
Key.taggedWithLabels
```

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
