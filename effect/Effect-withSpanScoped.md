# withSpanScoped

Wraps the effect with a new span for tracing.

The span is ended when the Scope is finalized.

To import and use `withSpanScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withSpanScoped
```

**Signature**

```ts
export declare const withSpanScoped: {
  (
    name: string,
    options?: Tracer.SpanOptions
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Tracer.ParentSpan> | Scope.Scope>
  <A, E, R>(
    self: Effect<A, E, R>,
    name: string,
    options?: Tracer.SpanOptions
  ): Effect<A, E, Exclude<R, Tracer.ParentSpan> | Scope.Scope>
}
```
