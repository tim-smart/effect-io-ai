# withSpan

Wraps the effect with a new span for tracing.

To import and use `withSpan` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withSpan
```

**Signature**

```ts
export declare const withSpan: {
  (
    name: string,
    options?: {
      readonly attributes?: Record<string, Tracer.AttributeValue>
      readonly links?: ReadonlyArray<Tracer.SpanLink>
      readonly parent?: Tracer.ParentSpan
      readonly root?: boolean
      readonly context?: Context.Context<never>
    }
  ): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(
    self: Effect<R, E, A>,
    name: string,
    options?: {
      readonly attributes?: Record<string, Tracer.AttributeValue>
      readonly links?: ReadonlyArray<Tracer.SpanLink>
      readonly parent?: Tracer.ParentSpan
      readonly root?: boolean
      readonly context?: Context.Context<never>
    }
  ): Effect<R, E, A>
}
```
