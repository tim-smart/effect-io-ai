Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.formatUnsafe

Formats all metrics in the registry to Prometheus exposition format synchronously.

**When to use**

Use when you use this low-level function when you already have access to the context. Most
users should use `format` instead.

**Signature**

```ts
declare const formatUnsafe: (context: Context.Context<never>, options?: FormatOptions | undefined) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PrometheusMetrics.ts#L152)

Since v4.0.0