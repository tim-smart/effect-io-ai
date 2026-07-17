Package: `effect`<br />
Module: `Sink`<br />

## Sink.forEachWhileArray

Runs an effectful function for each non-empty input array while it returns
`true`.

**Details**

The sink stops consuming input when the function returns `false` or when the
upstream stream ends, and completes with `void`.

**Signature**

```ts
declare const forEachWhileArray: <In, E, R>(f: (input: NonEmptyReadonlyArray<In>) => Effect.Effect<boolean, E, R>) => Sink<void, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1855)

Since v4.0.0