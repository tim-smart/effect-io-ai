# setSpan

Create and add a span to the current span stack.

The span is ended when the Layer is released.

To import and use `setSpan` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.setSpan
```

**Signature**

```ts
export declare const setSpan: (
  name: string,
  options?: {
    readonly attributes?: Record<string, Tracer.AttributeValue>
    readonly links?: ReadonlyArray<Tracer.SpanLink>
    readonly parent?: Tracer.ParentSpan
    readonly root?: boolean
    readonly context?: Context.Context<never>
  }
) => Layer.Layer<never, never, never>
```
