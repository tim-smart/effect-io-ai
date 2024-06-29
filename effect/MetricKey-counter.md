# counter

Creates a metric key for a counter, with the specified name.

To import and use `counter` from the "MetricKey" module:

```ts
import * as MetricKey from "effect/MetricKey"
// Can be accessed like this
MetricKey.counter
```

**Signature**

```ts
export declare const counter: {
  (
    name: string,
    options?: {
      readonly description?: string | undefined
      readonly bigint?: false | undefined
      readonly incremental?: boolean | undefined
    }
  ): MetricKey.Counter<number>
  (
    name: string,
    options: {
      readonly description?: string | undefined
      readonly bigint: true
      readonly incremental?: boolean | undefined
    }
  ): MetricKey.Counter<bigint>
}
```
