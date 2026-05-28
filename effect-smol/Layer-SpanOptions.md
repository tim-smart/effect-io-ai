Package: `effect`<br />
Module: `Layer`<br />

## Layer.SpanOptions

Represents options that can be used to control the behavior of spans created
for layers.

**When to use**

Use to configure tracing metadata, stack trace capture, and `onEnd`
finalization for spans created by `Layer.span` and `Layer.withSpan` during
layer construction.

**Details**

Extends `Tracer.SpanOptions` with `onEnd`, which runs when the layer span
ends as the layer scope closes.

**See**

- `span` for creating a layer span
- `withSpan` for wrapping layer construction in a span

**Signature**

```ts
export interface SpanOptions extends Tracer.SpanOptions {
  /**
   * Runs when the span associated with the layer ends, which happens when the
   * layer scope is closed.
   */
  readonly onEnd?:
    | ((span: Tracer.Span, exit: Exit.Exit<unknown, unknown>) => Effect<void>)
    | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2487)

Since v4.0.0