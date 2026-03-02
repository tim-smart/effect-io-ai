Package: `@effect/opentelemetry`<br />
Module: `Metrics`<br />

## Metrics.registerProducer

Registers a metric producer with one or more metric readers.

**Signature**

```ts
declare const registerProducer: (self: MetricProducer, metricReader: LazyArg<MetricReader | Arr.NonEmptyReadonlyArray<MetricReader>>, options?: { readonly shutdownTimeout?: Duration.Input | undefined; }) => Effect.Effect<Array<any>, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Metrics.ts#L48)

Since v1.0.0