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
export declare const summary: (options: {
  readonly name: string
  readonly maxAge: Duration.DurationInput
  readonly maxSize: number
  readonly error: number
  readonly quantiles: Chunk.Chunk<number>
  readonly description?: string
}) => MetricKey.Summary
```
