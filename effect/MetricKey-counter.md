## counter

Creates a metric key for a counter, with the specified name.

**Signature**

```ts
declare const counter: { (name: string, options?: { readonly description?: string | undefined; readonly bigint?: false | undefined; readonly incremental?: boolean | undefined; }): MetricKey.Counter<number>; (name: string, options: { readonly description?: string | undefined; readonly bigint: true; readonly incremental?: boolean | undefined; }): MetricKey.Counter<bigint>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricKey.ts#L109)

Since v2.0.0