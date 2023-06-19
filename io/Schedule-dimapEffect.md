# dimapEffect

Returns a new schedule that contramaps the input and maps the output.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const dimapEffect: {
  <In2, Env2, In, Out, Env3, Out2>(
    f: (input: In2) => Effect.Effect<Env2, never, In>,
    g: (out: Out) => Effect.Effect<Env3, never, Out2>
  ): <Env>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env3 | Env, In2, Out2>
  <Env, In, Out, In2, Env2, Env3, Out2>(
    self: Schedule<Env, In, Out>,
    f: (input: In2) => Effect.Effect<Env2, never, In>,
    g: (out: Out) => Effect.Effect<Env3, never, Out2>
  ): Schedule<Env | Env2 | Env3, In2, Out2>
}
```
