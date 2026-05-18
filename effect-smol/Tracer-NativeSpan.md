Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.NativeSpan

Default in-memory `Span` implementation used by the native tracer.

It generates span and trace identifiers, stores attributes, events, and
links, and records `Started` or `Ended` status.

**Signature**

```ts
declare class NativeSpan { constructor(options: {
    readonly name: string
    readonly parent: Option.Option<AnySpan>
    readonly annotations: Context.Context<never>
    readonly links: Array<SpanLink>
    readonly startTime: bigint
    readonly kind: SpanKind
    readonly sampled: boolean
  }) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L581)

Since v4.0.0