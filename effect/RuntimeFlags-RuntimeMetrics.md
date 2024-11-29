# RuntimeMetrics

The runtime metrics flag determines whether or not the Effect runtime system
will collect metrics about the Effect runtime. Use of this flag will have a
very small negative impact on performance, but generates very helpful
operational insight into running Effect applications that can be exported to
Prometheus or other tools via Effect Metrics.

To import and use `RuntimeMetrics` from the "RuntimeFlags" module:

ts
import \* as RuntimeFlags from "effect/RuntimeFlags"
// Can be accessed like this
RuntimeFlags.RuntimeMetrics
undefined

**Signature**

```ts
export declare const RuntimeMetrics: RuntimeFlag
```
