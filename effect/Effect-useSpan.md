Package: `effect`<br />
Module: `Effect`<br />

## Effect.useSpan

Create a new span for tracing, and automatically close it when the effect
completes.

The span is not added to the current span stack, so no child spans will be
created for it.

**Signature**

```ts
declare const useSpan: { <A, E, R>(name: string, evaluate: (span: Tracer.Span) => Effect<A, E, R>): Effect<A, E, R>; <A, E, R>(name: string, options: Tracer.SpanOptions, evaluate: (span: Tracer.Span) => Effect<A, E, R>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13034)

Since v2.0.0