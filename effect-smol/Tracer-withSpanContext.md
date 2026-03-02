Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.withSpanContext

Set the effect's parent span from the given opentelemetry `SpanContext`.

This is handy when you set up OpenTelemetry outside of Effect and want to
attach to a parent span.

**Signature**

```ts
declare const withSpanContext: { (spanContext: Otel.SpanContext): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Effect.Effect<A, E, R>, spanContext: Otel.SpanContext): Effect.Effect<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L310)

Since v1.0.0