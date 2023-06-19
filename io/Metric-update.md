# update

Updates the metric with the specified update message. For example, if the
metric were a counter, the update would increment the method by the
provided amount.

Part of the `Metric` module, imported from `@effect/io/Metric`.

**Signature**

```ts
export declare const update: {
  <In>(input: In): <Type, Out>(self: Metric<Type, In, Out>) => Effect.Effect<never, never, void>
  <Type, In, Out>(self: Metric<Type, In, Out>, input: In): Effect.Effect<never, never, void>
}
```
