# summary

Creates a metric key for a summary, with the specified name, maxAge,
maxSize, error, and quantiles.

Part of the `Key` module, imported from `@effect/io/Metric/Key`.

**Signature**

```ts
export declare const summary: (
  name: string,
  maxAge: Duration.Duration,
  maxSize: number,
  error: number,
  quantiles: Chunk.Chunk<number>
) => MetricKey.Summary
```
