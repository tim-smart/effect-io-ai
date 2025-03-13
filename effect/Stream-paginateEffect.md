Package: `effect`<br />
Module: `Stream`<br />

## Stream.paginateEffect

Like `Stream.unfoldEffect` but allows the emission of values to end one step
further than the unfolding of the state. This is useful for embedding
paginated APIs, hence the name.

**Signature**

```ts
declare const paginateEffect: <S, A, E, R>(s: S, f: (s: S) => Effect.Effect<readonly [A, Option.Option<S>], E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3415)

Since v2.0.0