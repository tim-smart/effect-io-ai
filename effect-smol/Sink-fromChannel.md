Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromChannel

Creates a sink from a `Channel`.

**When to use**

Use to create a `Sink` from a `Channel` that processes non-empty arrays of
input values.

**See**

- `toChannel` for converting a `Sink` back to a `Channel`

**Signature**

```ts
declare const fromChannel: <L, In, E, A, R>(channel: Channel.Channel<never, E, End<A, L>, NonEmptyReadonlyArray<In>, never, void, R>) => Sink<A, In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L247)

Since v2.0.0