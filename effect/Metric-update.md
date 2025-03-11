## update

Updates the metric with the specified update message. For example, if the
metric were a counter, the update would increment the method by the
provided amount.

**Signature**

```ts
declare const update: { <In>(input: In): <Type, Out>(self: Metric<Type, In, Out>) => Effect.Effect<void>; <Type, In, Out>(self: Metric<Type, In, Out>, input: In): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L699)

Since v2.0.0