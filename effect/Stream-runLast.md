Package: `effect`<br />
Module: `Stream`<br />

## Stream.runLast

Runs the stream to completion and yields the last value emitted by it,
discarding the rest of the elements.

**Signature**

```ts
declare const runLast: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4437)

Since v2.0.0