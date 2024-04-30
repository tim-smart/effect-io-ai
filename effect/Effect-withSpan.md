# withSpan

Wraps the effect with a new span for tracing.

To import and use `withSpan` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.withSpan
```

**Signature**

```ts
export declare const withSpan: {
  (
    name: string,
    options?: Tracer.SpanOptions | undefined
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Tracer.ParentSpan>>
  <A, E, R>(
    self: Effect<A, E, R>,
    name: string,
    options?: Tracer.SpanOptions | undefined
  ): Effect<A, E, Exclude<R, Tracer.ParentSpan>>
}
```
