Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromEffectTake

Creates a channel from an effect that produces a `Take`.

**Details**

A successful `Take` emits a non-empty array of output elements. A failed
`Take` fails the channel. A done `Take` completes the channel with its done
value.

**Signature**

```ts
declare const fromEffectTake: <A, E, Done, E2, R>(effect: Effect.Effect<Take.Take<A, E, Done>, E2, R>) => Channel<Arr.NonEmptyReadonlyArray<A>, E | E2, Done, unknown, unknown, unknown, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1166)

Since v4.0.0