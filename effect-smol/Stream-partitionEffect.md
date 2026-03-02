Package: `effect`<br />
Module: `Stream`<br />

## Stream.partitionEffect

Splits a stream using an effectful `Filter`, producing pass and fail streams.

**Signature**

```ts
declare const partitionEffect: { <A, Pass, Fail, EX, RX>(filter: Filter.FilterEffect<NoInfer<A>, Pass, Fail, EX, RX>, options?: { readonly capacity?: number | "unbounded" | undefined; readonly concurrency?: number | "unbounded" | undefined; }): <E, R>(self: Stream<A, E, R>) => Effect.Effect<[passes: Stream<Pass, E | EX>, fails: Stream<Fail, E | EX>], never, R | RX | Scope.Scope>; <A, E, R, Pass, Fail, EX, RX>(self: Stream<A, E, R>, filter: Filter.FilterEffect<NoInfer<A>, Pass, Fail, EX, RX>, options?: { readonly capacity?: number | "unbounded" | undefined; readonly concurrency?: number | "unbounded" | undefined; }): Effect.Effect<[passes: Stream<Pass, E | EX>, fails: Stream<Fail, E | EX>], never, R | RX | Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4141)

Since v4.0.0