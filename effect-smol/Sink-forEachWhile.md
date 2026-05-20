Package: `effect`<br />
Module: `Sink`<br />

## Sink.forEachWhile

Runs an effectful function for each input element while it returns `true`.

**Details**

The sink stops consuming input when the function returns `false` or when the
upstream stream ends, and completes with `void`.

**Signature**

```ts
declare const forEachWhile: <In, E, R>(f: (input: In) => Effect.Effect<boolean, E, R>) => Sink<void, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1702)

Since v2.0.0