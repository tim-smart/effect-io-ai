Package: `effect`<br />
Module: `Stream`<br />

## Stream.takeUntilEffect

Takes all elements of the stream until the specified effectual predicate
evaluates to `true`.

**Signature**

```ts
declare const takeUntilEffect: { <A, E2, R2>(predicate: (a: NoInfer<A>) => Effect.Effect<boolean, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, predicate: (a: A) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4859)

Since v2.0.0