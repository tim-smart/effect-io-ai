Package: `effect`<br />
Module: `Effect`<br />

## Effect.makeSpanScoped

Create a new span for tracing, and automatically close it when the Scope
finalizes.

The span is not added to the current span stack, so no child spans will be
created for it.

**Signature**

```ts
declare const makeSpanScoped: (name: string, options?: Tracer.SpanOptions | undefined) => Effect<Tracer.Span, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L13048)

Since v2.0.0