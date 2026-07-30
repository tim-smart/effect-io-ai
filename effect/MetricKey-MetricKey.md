Package: `effect`<br />
Module: `MetricKey`<br />

## MetricKey.MetricKey

A `MetricKey` is a unique key associated with each metric. The key is based
on a combination of the metric type, the name and tags associated with the
metric, an optional description of the key, and any other information to
describe a metric, such as the boundaries of a histogram. In this way, it is
impossible to ever create different metrics with conflicting keys.

**Signature**

```ts
export interface MetricKey<out Type extends MetricKeyType.MetricKeyType<any, any>>
  extends MetricKey.Variance<Type>, Equal.Equal, Pipeable
{
  readonly name: string
  readonly keyType: Type
  readonly description: Option.Option<string>
  readonly tags: ReadonlyArray<MetricLabel.MetricLabel>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricKey.ts#L36)

Since v2.0.0