# withSpanScoped

Create and add a span to the current span stack.

The span is ended when the Scope is finalized.

To import and use `withSpanScoped` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.withSpanScoped
```

**Signature**

```ts
export declare const withSpanScoped: (
  name: string,
  options?: {
    readonly attributes?: Record<string, Tracer.AttributeValue>
    readonly links?: ReadonlyArray<Tracer.SpanLink>
    readonly parent?: Tracer.ParentSpan
    readonly root?: boolean
    readonly context?: Context.Context<never>
  }
) => Effect<Scope.Scope, never, void>
```
