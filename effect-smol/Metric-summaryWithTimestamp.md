Package: `effect`<br />
Module: `Metric`<br />

## Metric.summaryWithTimestamp

Creates a `Summary` metric that records observations and calculates quantiles
which takes a value and the current timestamp as input.

Summary metrics are most suitable for providing statistical information about
a set of values, including quantiles.

**Options**

- `description` - An description of the `Summary`.
- `attributes`  - The attributes to associate with the `Summary`.
- `maxAge`      - The maximum age of observations to retain.
- `maxSize`     - The maximum number of observations to keep.
- `quantiles`   - An array of quantiles to calculate (e.g., [0.5, 0.9]).

**Example**

```ts
import { Metric } from "effect"

const responseTimesSummary = Metric.summaryWithTimestamp(
  "response_times_summary",
  {
    description: "Measures the distribution of response times",
    maxAge: "60 seconds", // Retain observations for 60 seconds.
    maxSize: 1000, // Keep a maximum of 1000 observations.
    quantiles: [0.5, 0.9, 0.99] // Calculate 50th, 90th, and 99th quantiles.
  }
)
```

**Signature**

```ts
declare const summaryWithTimestamp: (name: string, options: { readonly description?: string | undefined; readonly attributes?: Metric.Attributes | undefined; readonly maxAge: Duration.Input; readonly maxSize: number; readonly quantiles: ReadonlyArray<number>; }) => Summary<[value: number, timestamp: number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2606)

Since v2.0.0