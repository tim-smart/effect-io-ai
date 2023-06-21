# summary

Creates a metric key for a summary, with the specified name, maxAge,
maxSize, error, and quantiles.

To import and use `summary` from the "Key" module:

```ts
import * as Key from '@effect/io/Metric/Key'

// Can be accessed like this
Key.summary
```

**Signature**

```ts
export declare const summary: (
  name: string,
  maxAge: Duration.Duration,
  maxSize: number,
  error: number,
  quantiles: Chunk.Chunk<number>,
  description?: string
) => MetricKey.Summary
```
