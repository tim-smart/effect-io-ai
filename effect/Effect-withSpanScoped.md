Package: `effect`<br />
Module: `Effect`<br />

## Effect.withSpanScoped

Wraps the effect with a new span for tracing.

The span is ended when the Scope is finalized.

**Signature**

```ts
declare const withSpanScoped: { (name: string, options?: Tracer.SpanOptions): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Tracer.ParentSpan> | Scope.Scope>; <A, E, R>(self: Effect<A, E, R>, name: string, options?: Tracer.SpanOptions): Effect<A, E, Exclude<R, Tracer.ParentSpan> | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13163)

Since v2.0.0