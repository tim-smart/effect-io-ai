Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapInputContext

Transforms the context being provided to the stream with the specified
function.

**Signature**

```ts
declare const mapInputContext: { <R0, R>(f: (env: Context.Context<R0>) => Context.Context<R>): <A, E>(self: Stream<A, E, R>) => Stream<A, E, R0>; <A, E, R0, R>(self: Stream<A, E, R>, f: (env: Context.Context<R0>) => Context.Context<R>): Stream<A, E, R0>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3700)

Since v2.0.0