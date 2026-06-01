Package: `effect`<br />
Module: `Stream`<br />

## Stream.runLast

Runs the stream and returns the last element as an `Option`.

**When to use**

Use to consume a finite stream when only the final emitted element matters.

**Details**

`Option.some` contains the last emitted element. `Option.none` means the
stream completed without emitting.

**Gotchas**

The returned effect waits for the stream to complete before it can produce a
value.

**See**

- `runHead` for consuming only the first emitted element
- `runCollect` for collecting every emitted element
- `runDrain` for consuming the stream while discarding emitted elements

**Signature**

```ts
declare const runLast: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10911)

Since v2.0.0