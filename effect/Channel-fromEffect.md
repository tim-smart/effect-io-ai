Package: `effect`<br />
Module: `Channel`<br />

## Channel.fromEffect

Use an effect to end a channel.

**Signature**

```ts
declare const fromEffect: <A, E, R>(effect: Effect.Effect<A, E, R>) => Channel<never, unknown, E, unknown, A, unknown, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1084)

Since v2.0.0