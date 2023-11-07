# makeSpanScoped

Create a new span for tracing, and automatically close it when the Scope
finalizes.

The span is not added to the current span stack, so no child spans will be
created for it.

To import and use `makeSpanScoped` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.makeSpanScoped
```

**Signature**

```ts
export declare const makeSpanScoped: (
  name: string,
  options?: {
    readonly attributes?: Record<string, unknown>
    readonly links?: ReadonlyArray<Tracer.SpanLink>
    readonly parent?: Tracer.ParentSpan
    readonly root?: boolean
    readonly context?: Context.Context<never>
  }
) => Effect<Scope.Scope, never, Tracer.Span>
```
