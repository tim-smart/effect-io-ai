# taggedWithLabels

Returns a new `MetricKey` with the specified tags appended.

To import and use `taggedWithLabels` from the "MetricKey" module:

```ts
import * as MetricKey from 'effect/MetricKey'

// Can be accessed like this
MetricKey.taggedWithLabels
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
