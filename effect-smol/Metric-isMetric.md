Package: `effect`<br />
Module: `Metric`<br />

## Metric.isMetric

Returns `true` if the specified value is a `Metric`, otherwise returns `false`.

This function is useful for runtime type checking and ensuring that a value
conforms to the Metric interface before performing metric operations.

**Example**

```ts
import { Metric } from "effect"

const counter = Metric.counter("requests")
const gauge = Metric.gauge("temperature")
const notAMetric = { name: "fake-metric" }

console.log(Metric.isMetric(counter)) // true
console.log(Metric.isMetric(gauge)) // true
console.log(Metric.isMetric(notAMetric)) // false
console.log(Metric.isMetric(null)) // false
```

**Signature**

```ts
declare const isMetric: (u: unknown) => u is Metric<unknown, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Metric.ts#L2170)

Since v4.0.0