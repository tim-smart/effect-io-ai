# gauge

Creates a metric key for a gauge, with the specified name.

To import and use `gauge` from the "MetricKey" module:

ts
import \* as MetricKey from "effect/MetricKey"
// Can be accessed like this
MetricKey.gauge
undefined

**Signature**

```ts
export declare const gauge: {
  (
    name: string,
    options?: { readonly description?: string | undefined; readonly bigint?: false | undefined }
  ): MetricKey.Gauge<number>
  (name: string, options: { readonly description?: string | undefined; readonly bigint: true }): MetricKey.Gauge<bigint>
}
```
