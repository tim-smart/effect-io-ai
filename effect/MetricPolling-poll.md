## poll

An effect that polls a value that may be fed to the metric.

**Signature**

```ts
declare const poll: <Type, In, R, E, Out>(self: MetricPolling<Type, In, R, E, Out>) => Effect.Effect<In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MetricPolling.ts#L90)

Since v2.0.0