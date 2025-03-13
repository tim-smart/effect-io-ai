Package: `effect`<br />
Module: `Metric`<br />

## Metric.counter

Represents a Counter metric that tracks cumulative numerical values over time.
Counters can be incremented and decremented and provide a running total of changes.

**Options**

- description - A description of the counter.
- bigint - Indicates if the counter uses 'bigint' data type.
- incremental - Set to 'true' for a counter that only increases. With this configuration, Effect ensures that non-incremental updates have no impact on the counter, making it exclusively suitable for counting upwards.

**Example**

```ts
import { Metric } from "effect"

const numberCounter = Metric.counter("count", {
  description: "A number counter"
});

const bigintCounter = Metric.counter("count", {
  description: "A bigint counter",
  bigint: true
});
```

**Signature**

```ts
declare const counter: { (name: string, options?: { readonly description?: string | undefined; readonly bigint?: false | undefined; readonly incremental?: boolean | undefined; }): Metric.Counter<number>; (name: string, options: { readonly description?: string | undefined; readonly bigint: true; readonly incremental?: boolean | undefined; }): Metric.Counter<bigint>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L186)

Since v2.0.0