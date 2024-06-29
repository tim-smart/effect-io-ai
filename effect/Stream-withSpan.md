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
    options?: Tracer.SpanOptions | undefined
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, Tracer.ParentSpan>>
  <A, E, R>(
    self: Stream<A, E, R>,
    name: string,
    options?: Tracer.SpanOptions | undefined
  ): Stream<A, E, Exclude<R, Tracer.ParentSpan>>
}
```
