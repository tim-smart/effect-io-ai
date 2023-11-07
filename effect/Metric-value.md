# value

Retrieves a snapshot of the value of the metric at this moment in time.

To import and use `value` from the "Metric" module:

```ts
import * as Metric from 'effect/Metric'

// Can be accessed like this
Metric.value
```

**Signature**

```ts
export declare const value: <Type, In, Out>(self: Metric<Type, In, Out>) => Effect.Effect<never, never, Out>
```
