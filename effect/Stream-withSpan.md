# withSpan

Wraps the stream with a new span for tracing.

To import and use `withSpan` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.withSpan
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
  ): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(
    self: Stream<R, E, A>,
    name: string,
    options?: {
      readonly attributes?: Record<string, unknown>
      readonly links?: ReadonlyArray<Tracer.SpanLink>
      readonly parent?: Tracer.ParentSpan
      readonly root?: boolean
      readonly context?: Context.Context<never>
    }
  ): Stream<R, E, A>
}
```
