# makeSpan

Create a new span for tracing.

To import and use `makeSpan` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.makeSpan
```

**Signature**

```ts
export declare const makeSpan: (
  name: string,
  options?: {
    readonly attributes?: Record<string, unknown> | undefined
    readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
    readonly parent?: Tracer.ParentSpan | undefined
    readonly root?: boolean | undefined
    readonly context?: Context.Context<never> | undefined
  }
) => Effect<never, never, Tracer.Span>
```
