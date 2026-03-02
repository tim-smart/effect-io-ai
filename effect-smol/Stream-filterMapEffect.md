Package: `effect`<br />
Module: `Stream`<br />

## Stream.filterMapEffect

Effectfully filters and maps elements in a single pass.

**Signature**

```ts
declare const filterMapEffect: { <A, B, X, EX, RX>(filter: Filter.FilterEffect<NoInfer<A>, B, X, EX, RX>): <E, R>(self: Stream<A, E, R>) => Stream<B, E | EX, R | RX>; <A, E, R, B, X, EX, RX>(self: Stream<A, E, R>, filter: Filter.FilterEffect<A, B, X, EX, RX>): Stream<B, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4000)

Since v4.0.0