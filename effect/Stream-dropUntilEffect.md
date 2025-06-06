Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropUntilEffect

Drops all elements of the stream until the specified effectful predicate
evaluates to `true`.

**Signature**

```ts
declare const dropUntilEffect: { <A, E2, R2>(predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1403)

Since v2.0.0