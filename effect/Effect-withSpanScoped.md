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
    options?: {
      readonly attributes?: Record<string, unknown> | undefined
      readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
      readonly parent?: Tracer.ParentSpan | undefined
      readonly root?: boolean | undefined
      readonly context?: Context.Context<never> | undefined
    }
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<Scope.Scope | Exclude<R, Tracer.ParentSpan>, E, A>
  <R, E, A>(
    self: Effect<R, E, A>,
    name: string,
    options?: {
      readonly attributes?: Record<string, unknown> | undefined
      readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
      readonly parent?: Tracer.ParentSpan | undefined
      readonly root?: boolean | undefined
      readonly context?: Context.Context<never> | undefined
    }
  ): Effect<Scope.Scope | Exclude<R, Tracer.ParentSpan>, E, A>
}
```
