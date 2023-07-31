# makeSpan

Create a new span for tracing.

To import and use `makeSpan` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.makeSpan
```

**Signature**

```ts
export declare const makeSpan: (
  name: string,
  options?: {
    readonly attributes?: Record<string, Tracer.AttributeValue>
    readonly links?: ReadonlyArray<Tracer.SpanLink>
    readonly parent?: Tracer.ParentSpan
    readonly root?: boolean
    readonly context?: Context.Context<never>
  }
) => Effect<never, never, Tracer.Span>
```
