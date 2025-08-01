Package: `effect`<br />
Module: `Stream`<br />

## Stream.tapBoth

Returns a stream that effectfully "peeks" at the failure or success of
the stream.

**Signature**

```ts
declare const tapBoth: { <E, X1, E2, R2, A, X2, E3, R3>(options: { readonly onFailure: (e: NoInfer<E>) => Effect.Effect<X1, E2, R2>; readonly onSuccess: (a: NoInfer<A>) => Effect.Effect<X2, E3, R3>; }): <R>(self: Stream<A, E, R>) => Stream<A, E | E2 | E3, R2 | R3 | R>; <A, E, R, X1, E2, R2, X2, E3, R3>(self: Stream<A, E, R>, options: { readonly onFailure: (e: NoInfer<E>) => Effect.Effect<X1, E2, R2>; readonly onSuccess: (a: NoInfer<A>) => Effect.Effect<X2, E3, R3>; }): Stream<A, E | E2 | E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4933)

Since v2.0.0