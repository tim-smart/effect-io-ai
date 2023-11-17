# withSpan

Wraps the stream with a new span for tracing.

To import and use `withSpan` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.withSpan
```

**Signature**

```ts
export declare const withSpan: {
  (
    name: string,
    options?: {
      readonly attributes?: Record<string, unknown> | undefined
      readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
      readonly parent?: Tracer.ParentSpan | undefined
      readonly root?: boolean | undefined
      readonly context?: Context.Context<never> | undefined
    }
  ): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(
    self: Stream<R, E, A>,
    name: string,
    options?: {
      readonly attributes?: Record<string, unknown> | undefined
      readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
      readonly parent?: Tracer.ParentSpan | undefined
      readonly root?: boolean | undefined
      readonly context?: Context.Context<never> | undefined
    }
  ): Stream<R, E, A>
}
```
