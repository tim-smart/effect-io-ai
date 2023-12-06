# summary

Creates a metric key for a summary, with the specified name, maxAge,
maxSize, error, and quantiles.

To import and use `summary` from the "MetricKey" module:

```ts
import * as MetricKey from "effect/MetricKey"
// Can be accessed like this
MetricKey.summary
```

**Signature**

```ts
export declare const summary: (options: {
  readonly name: string
  readonly maxAge: Duration.DurationInput
  readonly maxSize: number
  readonly error: number
  readonly quantiles: ReadonlyArray<number>
  readonly description?: string | undefined
}) => MetricKey.Summary
```
