Package: `effect`<br />
Module: `Effect`<br />

## Effect.linkSpanCurrent

Add span links to the current span.

**Signature**

```ts
declare const linkSpanCurrent: { (span: Tracer.AnySpan, attributes?: Readonly<Record<string, unknown>> | undefined): Effect<void>; (links: ReadonlyArray<Tracer.SpanLink>): Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12970)

Since v3.14.0