Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.withSpanContext

Sets an effect's parent span from the given OpenTelemetry `SpanContext`.

**When to use**

Use this when OpenTelemetry instrumentation outside Effect has already
produced a parent span context and an effect should continue that trace.

**Signature**

```ts
declare const withSpanContext: { (spanContext: Otel.SpanContext): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Effect.Effect<A, E, R>, spanContext: Otel.SpanContext): Effect.Effect<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L357)

Since v4.0.0