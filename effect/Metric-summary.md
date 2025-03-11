## summary

Creates a Summary metric that records observations and calculates quantiles.
Summary metrics provide statistical information about a set of values, including quantiles.

**Options**

- name - The name of the Summary metric.
- maxAge - The maximum age of observations to retain.
- maxSize - The maximum number of observations to keep.
- error - The error percentage when calculating quantiles.
- quantiles - An `Chunk` of quantiles to calculate (e.g., [0.5, 0.9]).
- description - An optional description of the Summary metric.

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
});
```

**Signature**

```ts
declare const summary: (options: { readonly name: string; readonly maxAge: Duration.DurationInput; readonly maxSize: number; readonly error: number; readonly quantiles: ReadonlyArray<number>; readonly description?: string | undefined; }) => Metric.Summary<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L429)

Since v2.0.0