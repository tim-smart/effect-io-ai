# useSpanScoped

Create a new span for tracing, and automatically close it when the Scope
finalizes.

The span is not added to the current span stack, so no child spans will be
created for it.

To import and use `useSpanScoped` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.useSpanScoped
```

**Signature**

```ts
export declare const useSpanScoped: (
  name: string,
  options?: {
    readonly attributes?: Record<string, Tracer.AttributeValue>
    readonly links?: ReadonlyArray<Tracer.SpanLink>
    readonly parent?: Tracer.ParentSpan
    readonly root?: boolean
    readonly context?: Context.Context<never>
  }
) => Effect<Scope.Scope, never, Tracer.Span>
```
