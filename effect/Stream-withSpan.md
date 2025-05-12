Package: `effect`<br />
Module: `Stream`<br />

## Stream.withSpan

Wraps the stream with a new span for tracing.

**Signature**

```ts
declare const withSpan: { (name: string, options?: Tracer.SpanOptions | undefined): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Stream<A, E, R>, name: string, options?: Tracer.SpanOptions | undefined): Stream<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5569)

Since v2.0.0