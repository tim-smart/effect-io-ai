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
    options?:
      | {
          readonly attributes?: Record<string, unknown> | undefined
          readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
          readonly parent?: Tracer.AnySpan | undefined
          readonly root?: boolean | undefined
          readonly context?: Context.Context<never> | undefined
        }
      | undefined
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, Tracer.ParentSpan>>
  <A, E, R>(
    self: Stream<A, E, R>,
    name: string,
    options?:
      | {
          readonly attributes?: Record<string, unknown> | undefined
          readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
          readonly parent?: Tracer.AnySpan | undefined
          readonly root?: boolean | undefined
          readonly context?: Context.Context<never> | undefined
        }
      | undefined
  ): Stream<A, E, Exclude<R, Tracer.ParentSpan>>
}
```
