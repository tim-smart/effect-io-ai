# span

Create and add a span to the current span stack.

The span is ended when the Layer is released.

To import and use `span` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.span
```

**Signature**

```ts
export declare const span: (
  name: string,
  options?:
    | {
        readonly attributes?: Record<string, unknown> | undefined
        readonly links?: ReadonlyArray<Tracer.SpanLink> | undefined
        readonly parent?: Tracer.ParentSpan | undefined
        readonly root?: boolean | undefined
        readonly context?: Context.Context<never> | undefined
        readonly onEnd?:
          | ((span: Tracer.Span, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<never, never, void>)
          | undefined
      }
    | undefined
) => Layer<never, never, Tracer.ParentSpan>
```
