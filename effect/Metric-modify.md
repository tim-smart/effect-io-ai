# modify

Modifies the metric with the specified update message. For example, if the
metric were a gauge, the update would increment the method by the provided
amount.

To import and use `modify` from the "Metric" module:

```ts
import * as Metric from "effect/Metric"
// Can be accessed like this
Metric.modify
```

**Signature**

```ts
export declare const modify: {
  <In>(input: In): <Type, Out>(self: Metric<Type, In, Out>) => Effect.Effect<void>
  <Type, In, Out>(self: Metric<Type, In, Out>, input: In): Effect.Effect<void>
}
```
