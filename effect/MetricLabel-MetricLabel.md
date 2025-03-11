## MetricLabel

A `MetricLabel` represents a key value pair that allows analyzing metrics at
an additional level of granularity.

For example if a metric tracks the response time of a service labels could
be used to create separate versions that track response times for different
clients.

**Signature**

```ts
export interface MetricLabel extends Equal.Equal, Pipeable {
  readonly [MetricLabelTypeId]: MetricLabelTypeId
  readonly key: string
  readonly value: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricLabel.ts#L31)

Since v2.0.0