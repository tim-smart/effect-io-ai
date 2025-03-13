Package: `effect`<br />
Module: `Effect`<br />

## Effect.withSpan

Wraps the effect with a new span for tracing.

**Signature**

```ts
declare const withSpan: { (name: string, options?: Tracer.SpanOptions | undefined): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Effect<A, E, R>, name: string, options?: Tracer.SpanOptions | undefined): Effect<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12826)

Since v2.0.0