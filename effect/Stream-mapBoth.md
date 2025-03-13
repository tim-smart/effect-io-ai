Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapBoth

Returns a stream whose failure and success channels have been mapped by the
specified `onFailure` and `onSuccess` functions.

**Signature**

```ts
declare const mapBoth: { <E, E2, A, A2>(options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): <R>(self: Stream<A, E, R>) => Stream<A2, E2, R>; <A, E, R, E2, A2>(self: Stream<A, E, R>, options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): Stream<A2, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2773)

Since v2.0.0