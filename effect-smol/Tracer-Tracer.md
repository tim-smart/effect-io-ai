Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.Tracer

A tracing backend used by Effect to create spans.

Custom tracers implement `span` to allocate a span from the supplied name,
parent, annotations, links, start time, kind, root flag, and sampling
decision.

**Signature**

```ts
export interface Tracer {
  span(this: Tracer, options: {
    readonly name: string
    readonly parent: Option.Option<AnySpan>
    readonly annotations: Context.Context<never>
    readonly links: Array<SpanLink>
    readonly startTime: bigint
    readonly kind: SpanKind
    readonly root: boolean
    readonly sampled: boolean
  }): Span
  readonly context?:
    | (<X>(primitive: EffectPrimitive<X>, fiber: Fiber<any, any>) => X)
    | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L60)

Since v2.0.0