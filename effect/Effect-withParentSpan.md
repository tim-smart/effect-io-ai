## withParentSpan

Adds the provided span to the current span stack.

**Signature**

```ts
declare const withParentSpan: { (span: Tracer.AnySpan): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Tracer.ParentSpan>>; <A, E, R>(self: Effect<A, E, R>, span: Tracer.AnySpan): Effect<A, E, Exclude<R, Tracer.ParentSpan>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12906)

Since v2.0.0