Package: `effect`<br />
Module: `Stream`<br />

## Stream.contextWithEffect

Accesses the context of the stream in the context of an effect.

**Signature**

```ts
declare const contextWithEffect: <R0, A, E, R>(f: (env: Context.Context<R0>) => Effect.Effect<A, E, R>) => Stream<A, E, R0 | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1538)

Since v2.0.0