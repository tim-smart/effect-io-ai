# contramapContext

Transforms the context being provided to this schedule with the
specified function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const contramapContext: {
  <Env0, Env>(f: (env0: Context.Context<Env0>) => Context.Context<Env>): <In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env0, In, Out>
  <Env0, Env, In, Out>(
    self: Schedule<Env, In, Out>,
    f: (env0: Context.Context<Env0>) => Context.Context<Env>
  ): Schedule<Env0, In, Out>
}
```
