Package: `@effect/opentelemetry`<br />
Module: `OtelTracer`<br />

## OtelTracer.withSpanContext

Sets an effect's parent span from the given OpenTelemetry `SpanContext`.

**When to use**

Use when you need an effect to continue a trace from a parent span context
produced by OpenTelemetry instrumentation outside Effect.

**Signature**

```ts
declare const withSpanContext: { (spanContext: Otel.SpanContext): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Effect.Effect<A, E, R>, spanContext: Otel.SpanContext): Effect.Effect<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/OtelTracer.ts#L368)

Since v4.0.0