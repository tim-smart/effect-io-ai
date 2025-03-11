## flattenEffect

Flattens `Effect` values into the stream's structure, preserving all
information about the effect.

**Signature**

```ts
declare const flattenEffect: { (options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined): <A, E2, R2, E, R>(self: Stream<Effect.Effect<A, E2, R2>, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E2, R2, E, R>(self: Stream<Effect.Effect<A, E2, R2>, E, R>, options?: { readonly concurrency?: number | "unbounded" | undefined; readonly unordered?: boolean | undefined; } | undefined): Stream<A, E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1827)

Since v2.0.0