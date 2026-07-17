Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.NativeSpan

Default in-memory `Span` implementation used by the native tracer. It
generates span and trace identifiers, stores attributes, events, and links,
and records `Started` or `Ended` status.

**Details**

The constructor initializes the span with `Started` status, inherits the
parent trace id or generates a new one, and always generates a new span id.
Attributes, events, links, and status are then mutated through `Span` methods.

**See**

- `Span` for the interface implemented by native spans

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tracer.ts#L608)

Since v4.0.0