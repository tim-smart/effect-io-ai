Package: `effect`<br />
Module: `Metric`<br />

## Metric.modify

Modifies the metric with the specified update message. For example, if the
metric were a gauge, the update would increment the method by the provided
amount.

**Signature**

```ts
declare const modify: { <In>(input: In): <Type, Out>(self: Metric<Type, In, Out>) => Effect.Effect<void>; <Type, In, Out>(self: Metric<Type, In, Out>, input: In): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Metric.ts#L359)

Since v3.6.5