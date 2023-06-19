# run

Runs a schedule using the provided inputs, and collects all outputs.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const run: {
  <In>(now: number, input: Iterable<In>): <Env, Out>(
    self: Schedule<Env, In, Out>
  ) => Effect.Effect<Env, never, Chunk.Chunk<Out>>
  <Env, In, Out>(self: Schedule<Env, In, Out>, now: number, input: Iterable<In>): Effect.Effect<
    Env,
    never,
    Chunk.Chunk<Out>
  >
}
```
