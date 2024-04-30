# useSpan

Create a new span for tracing, and automatically close it when the effect
completes.

The span is not added to the current span stack, so no child spans will be
created for it.

To import and use `useSpan` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.useSpan
```

**Signature**

```ts
export declare const useSpan: {
  <A, E, R>(name: string, evaluate: (span: Tracer.Span) => Effect<A, E, R>): Effect<A, E, R>
  <A, E, R>(
    name: string,
    options: Tracer.SpanOptions,
    evaluate: (span: Tracer.Span) => Effect<A, E, R>
  ): Effect<A, E, R>
}
```
