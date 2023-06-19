# fromEffect

Use an effect to end a channel.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const fromEffect: <R, E, A>(
  effect: Effect.Effect<R, E, A>
) => Channel<R, unknown, unknown, unknown, E, never, A>
```
