## taggedWithLabels

Returns a new `MetricKey` with the specified tags appended.

**Signature**

```ts
declare const taggedWithLabels: { (extraTags: ReadonlyArray<MetricLabel.MetricLabel>): <Type extends MetricKeyType.MetricKeyType<any, any>>(self: MetricKey<Type>) => MetricKey<Type>; <Type extends MetricKeyType.MetricKeyType<any, any>>(self: MetricKey<Type>, extraTags: ReadonlyArray<MetricLabel.MetricLabel>): MetricKey<Type>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricKey.ts#L216)

Since v2.0.0