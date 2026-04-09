Package: `effect`<br />
Module: `Layer`<br />

## Layer.SpanOptions

Represents options that can be used to control the behavior of spans created
for layers.

**Signature**

```ts
export interface SpanOptions extends Tracer.SpanOptions {
  /**
   * A function that will be called when the span associated with the layer is
   * ending (i.e. when the `Scope` that the span is associated with is closed).
   */
  readonly onEnd?:
    | ((span: Tracer.Span, exit: Exit.Exit<unknown, unknown>) => Effect<void>)
    | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2057)

Since v4.0.0