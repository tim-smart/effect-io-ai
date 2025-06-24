Package: `effect`<br />
Module: `Stream`<br />

## Stream.refineOrDieWith

Keeps some of the errors, and terminates the fiber with the rest, using the
specified function to convert the `E` into a defect.

**Signature**

```ts
declare const refineOrDieWith: { <E, E2>(pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>; <A, E, R, E2>(self: Stream<A, E, R>, pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): Stream<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3857)

Since v2.0.0