Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropWhileFilter

Drops elements while the filter succeeds.

**Signature**

```ts
declare const dropWhileFilter: { <A, B, X>(filter: Filter.Filter<NoInfer<A>, B, X>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R, B, X>(self: Stream<A, E, R>, filter: Filter.Filter<NoInfer<A>, B, X>): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L6425)

Since v4.0.0