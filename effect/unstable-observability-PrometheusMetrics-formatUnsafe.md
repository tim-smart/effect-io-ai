Package: `effect`<br />
Module: `PrometheusMetrics`<br />

## PrometheusMetrics.formatUnsafe

Formats all metrics in the registry to Prometheus exposition format synchronously.

**When to use**

Use when you already have access to the context and need low-level
synchronous formatting.

**See**

- `format` for effectful formatting from the current context

**Signature**

```ts
declare const formatUnsafe: (context: Context.Context<never>, options?: FormatOptions | undefined) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PrometheusMetrics.ts#L117)

Since v4.0.0