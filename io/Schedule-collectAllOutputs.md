# collectAllOutputs

Returns a new schedule that collects the outputs of this one into a chunk.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const collectAllOutputs: <Env, In, Out>(
  self: Schedule<Env, In, Out>
) => Schedule<Env, In, Chunk.Chunk<Out>>
```
