## summary

Creates a metric key for a summary, with the specified name, maxAge,
maxSize, error, and quantiles.

**Signature**

```ts
declare const summary: (options: { readonly name: string; readonly maxAge: Duration.DurationInput; readonly maxSize: number; readonly error: number; readonly quantiles: ReadonlyArray<number>; readonly description?: string | undefined; }) => MetricKey.Summary
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricKey.ts#L181)

Since v2.0.0