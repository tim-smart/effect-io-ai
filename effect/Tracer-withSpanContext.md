# withSpanContext

Set the effect's parent span from the given opentelemetry `SpanContext`.

This is handy when you set up OpenTelemetry outside of Effect and want to
attach to a parent span.

To import and use `withSpanContext` from the "Tracer" module:

```ts
import * as Tracer from "@effect/opentelemetry/Tracer"
// Can be accessed like this
Tracer.withSpanContext
```

**Signature**

```ts
export declare const withSpanContext: {
  (spanContext: Otel.SpanContext): <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, Exclude<R, ParentSpan>>
  <A, E, R>(effect: Effect<A, E, R>, spanContext: Otel.SpanContext): Effect<A, E, Exclude<R, ParentSpan>>
}
```
