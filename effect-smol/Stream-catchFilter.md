Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchFilter

Recovers from errors that match a `Filter` by switching to a recovery
stream.

**Signature**

```ts
declare const catchFilter: { <E, EB, A2, E2, R2, X, A3 = never, E3 = X, R3 = never>(filter: Filter.Filter<NoInfer<E>, EB, X>, f: (failure: EB) => Stream<A2, E2, R2>, orElse?: ((failure: X) => Stream<A3, E3, R3>) | undefined): <A, R>(self: Stream<A, E, R>) => Stream<A | A2 | A3, E2 | E3, R | R2 | R3>; <A, E, R, EB, A2, E2, R2, X, A3 = never, E3 = X, R3 = never>(self: Stream<A, E, R>, filter: Filter.Filter<NoInfer<E>, EB, X>, f: (failure: EB) => Stream<A2, E2, R2>, orElse?: ((failure: X) => Stream<A3, E3, R3>) | undefined): Stream<A | A2 | A3, E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4840)

Since v4.0.0