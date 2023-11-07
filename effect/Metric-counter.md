# counter

Represents a Counter metric that tracks cumulative numerical values over time.
Counters can be incremented and decremented and provide a running total of changes.

To import and use `counter` from the "Metric" module:

```ts
import * as Metric from 'effect/Metric'

// Can be accessed like this
Metric.counter
```

**Example**

```ts
import * as Metric from 'effect/Metric'

const numberCounter = Metric.counter('count', {
  description: 'A number counter',
})

const bigintCounter = Metric.counter('count', {
  description: 'A bigint counter',
  bigint: true,
})
```

**Signature**

```ts
export declare const counter: {
  (
    name: string,
    options?: { readonly description?: string; readonly bigint?: false; readonly incremental?: boolean }
  ): Metric.Counter<number>
  (
    name: string,
    options: { readonly description?: string; readonly bigint: true; readonly incremental?: boolean }
  ): Metric.Counter<bigint>
}
```
