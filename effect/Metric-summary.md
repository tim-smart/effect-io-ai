# summary

Creates a Summary metric that records observations and calculates quantiles.
Summary metrics provide statistical information about a set of values, including quantiles.

To import and use `summary` from the "Metric" module:

ts
import \* as Metric from "effect/Metric"
// Can be accessed like this
Metric.summary
undefined

**Example**

```ts
import { Metric, Chunk } from "effect"

const responseTimesSummary = Metric.summary({
  name: "response_times_summary",
  maxAge: "60 seconds", // Retain observations for 60 seconds.
  maxSize: 1000, // Keep a maximum of 1000 observations.
  error: 0.01, // Allow a 1% error when calculating quantiles.
  quantiles: [0.5, 0.9, 0.99], // Calculate 50th, 90th, and 99th percentiles.
  description: "Measures the distribution of response times."
})
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
}) => Metric.Summary<number>
```
