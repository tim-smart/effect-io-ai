# counter

Creates a metric key for a counter, with the specified name.

To import and use `counter` from the "MetricKey" module:

```ts
import * as MetricKey from 'effect/MetricKey'

// Can be accessed like this
MetricKey.counter
```

**Signature**

```ts
export declare const counter: {
  (
    name: string,
    options?: { readonly description?: string; readonly bigint?: false; readonly incremental?: boolean }
  ): MetricKey.Counter<number>
  (
    name: string,
    options: { readonly description?: string; readonly bigint: true; readonly incremental?: boolean }
  ): MetricKey.Counter<bigint>
}
```
