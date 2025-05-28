Package: `effect`<br />
Module: `Stream`<br />

## Stream.runCount

Runs the stream and emits the number of elements processed

**Signature**

```ts
declare const runCount: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<number, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4125)

Since v2.0.0