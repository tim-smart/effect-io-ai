## gauge

Creates a metric key for a gauge, with the specified name.

**Signature**

```ts
declare const gauge: { (name: string, options?: { readonly description?: string | undefined; readonly bigint?: false | undefined; }): MetricKey.Gauge<number>; (name: string, options: { readonly description?: string | undefined; readonly bigint: true; }): MetricKey.Gauge<bigint>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricKey.ts#L151)

Since v2.0.0