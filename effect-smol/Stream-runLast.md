Package: `effect`<br />
Module: `Stream`<br />

## Stream.runLast

Runs the stream and returns the last element as an `Option`.

**Signature**

```ts
declare const runLast: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9939)

Since v2.0.0