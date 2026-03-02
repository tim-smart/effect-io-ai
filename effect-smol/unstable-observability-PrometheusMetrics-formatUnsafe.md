Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.formatUnsafe

Synchronously format all metrics in the registry to Prometheus exposition format.

This is a low-level function that requires access to the service map.
Most users should use `format` instead.

**Signature**

```ts
declare const formatUnsafe: (services: ServiceMap.ServiceMap<never>, options?: FormatOptions | undefined) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrometheusMetrics.ts#L131)

Since v4.0.0