# withSpan

Wraps the effect with a new span for tracing.

To import and use `withSpan` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.withSpan
```

**Signature**

```ts
export declare const withSpan: {
  (
    name: string,
    options?: {
      readonly attributes?: Record<string, unknown>
      readonly links?: ReadonlyArray<Tracer.SpanLink>
      readonly parent?: Tracer.ParentSpan
      readonly root?: boolean
      readonly context?: Context.Context<never>
    }
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<Exclude<R, Tracer.ParentSpan>, E, A>
  <R, E, A>(
    self: Effect<R, E, A>,
    name: string,
    options?: {
      readonly attributes?: Record<string, unknown>
      readonly links?: ReadonlyArray<Tracer.SpanLink>
      readonly parent?: Tracer.ParentSpan
      readonly root?: boolean
      readonly context?: Context.Context<never>
    }
  ): Effect<Exclude<R, Tracer.ParentSpan>, E, A>
}
```
