Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterMapEffect

Performs an effectful filter and map in a single step.

**Signature**

```ts
declare const filterMapEffect: { <A, A2, E2, R2>(pf: (a: A) => Option.Option<Effect.Effect<A2, E2, R2>>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, pf: (a: A) => Option.Option<Effect.Effect<A2, E2, R2>>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1659)

Since v2.0.0