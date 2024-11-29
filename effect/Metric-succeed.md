# succeed

Creates a metric that ignores input and produces constant output.

To import and use `succeed` from the "Metric" module:

ts
import \* as Metric from "effect/Metric"
// Can be accessed like this
Metric.succeed
undefined

**Signature**

```ts
export declare const succeed: <Out>(out: Out) => Metric<void, unknown, Out>
```
