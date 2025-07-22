Package: `effect`<br />
Module: `Effect`<br />

## Effect.linkSpans

For all spans in this effect, add a link with the provided span.

**Signature**

```ts
declare const linkSpans: { (span: Tracer.AnySpan, attributes?: Record<string, unknown>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>; <A, E, R>(self: Effect<A, E, R>, span: Tracer.AnySpan, attributes?: Record<string, unknown>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13020)

Since v2.0.0