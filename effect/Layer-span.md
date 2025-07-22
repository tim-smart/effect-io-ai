Package: `effect`<br />
Module: `Layer`<br />

## Layer.span

Create and add a span to the current span stack.

The span is ended when the Layer is released.

**Signature**

```ts
declare const span: (name: string, options?: Tracer.SpanOptions & { readonly onEnd?: ((span: Tracer.Span, exit: Exit.Exit<unknown, unknown>) => Effect.Effect<void>) | undefined; }) => Layer<Tracer.ParentSpan>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L1069)

Since v2.0.0