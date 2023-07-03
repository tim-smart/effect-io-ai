# useSpan

Create a new span for tracing, and automatically close it when the effect
completes.

The span is not added to the current span stack, so no child spans will be
created for it.

To import and use `useSpan` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.useSpan
```

**Signature**

```ts
export declare const useSpan: {
  <R, E, A>(name: string, evaluate: (span: Tracer.Span) => Effect<R, E, A>): Effect<R, E, A>
  <R, E, A>(
    name: string,
    options: {
      readonly attributes?: Record<string, Tracer.AttributeValue>
      readonly parent?: Tracer.ParentSpan
      readonly root?: boolean
      readonly context?: Context.Context<never>
    },
    evaluate: (span: Tracer.Span) => Effect<R, E, A>
  ): Effect<R, E, A>
}
```
