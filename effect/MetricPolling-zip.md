Package: `effect`<br />
Module: `MetricPolling`<br />

## MetricPolling.zip

Zips this polling metric with the specified polling metric.

**Signature**

```ts
declare const zip: { <Type2, In2, R2, E2, Out2>(that: MetricPolling<Type2, In2, R2, E2, Out2>): <Type, In, R, E, Out>(self: MetricPolling<Type, In, R, E, Out>) => MetricPolling<readonly [Type, Type2], readonly [In, In2], R2 | R, E2 | E, [Out, Out2]>; <Type, In, R, E, Out, Type2, In2, R2, E2, Out2>(self: MetricPolling<Type, In, R, E, Out>, that: MetricPolling<Type2, In2, R2, E2, Out2>): MetricPolling<readonly [Type, Type2], readonly [In, In2], R | R2, E | E2, [Out, Out2]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricPolling.ts#L126)

Since v2.0.0