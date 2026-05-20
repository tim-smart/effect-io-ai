Package: `effect`<br />
Module: `Layer`<br />

## Layer.SpanOptions

Represents options that can be used to control the behavior of spans created
for layers.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2353)

Since v4.0.0