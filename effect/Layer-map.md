Package: `effect`<br />
Module: `Layer`<br />

## Layer.map

Returns a new layer whose output is mapped by the specified function.

**Signature**

```ts
declare const map: { <A, B>(f: (context: Context.Context<A>) => Context.Context<B>): <E, R>(self: Layer<A, E, R>) => Layer<B, E, R>; <A, E, R, B>(self: Layer<A, E, R>, f: (context: Context.Context<A>) => Context.Context<B>): Layer<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L486)

Since v2.0.0