# taggedWithLabelSet

Returns a new `MetricKey` with the specified tags appended.

To import and use `taggedWithLabelSet` from the "MetricKey" module:

```ts
import * as MetricKey from "effect/MetricKey"
// Can be accessed like this
MetricKey.taggedWithLabelSet
```

**Signature**

```ts
export declare const taggedWithLabelSet: {
  (
    extraTags: HashSet.HashSet<MetricLabel.MetricLabel>
  ): <Type extends MetricKeyType.MetricKeyType<any, any>>(self: MetricKey<Type>) => MetricKey<Type>
  <Type extends MetricKeyType.MetricKeyType<any, any>>(
    self: MetricKey<Type>,
    extraTags: HashSet.HashSet<MetricLabel.MetricLabel>
  ): MetricKey<Type>
}
```
