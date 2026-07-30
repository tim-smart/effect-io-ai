Package: `effect`<br />
Module: `Stream`<br />

## Stream.refineOrDie

Keeps some of the errors, and terminates the fiber with the rest

**Signature**

```ts
declare const refineOrDie: { <E, E2>(pf: (error: E) => Option.Option<E2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>; <A, E, R, E2>(self: Stream<A, E, R>, pf: (error: E) => Option.Option<E2>): Stream<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3845)

Since v2.0.0