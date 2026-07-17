Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.SpanOptionsNoTrace

Span creation options that do not control stack trace capture, including
attributes, links, parent or root selection, annotations, span kind,
sampling, and the trace level used for filtering.

**Signature**

```ts
export interface SpanOptionsNoTrace {
  readonly attributes?: Record<string, unknown> | undefined
  readonly links?: ReadonlyArray<SpanLink> | undefined
  readonly parent?: AnySpan | undefined
  readonly root?: boolean | undefined
  readonly annotations?: Context.Context<never> | undefined
  readonly kind?: SpanKind | undefined
  readonly sampled?: boolean | undefined
  readonly level?: LogLevel | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tracer.ts#L241)

Since v4.0.0