# mapInputContext

Transforms the context being provided to this schedule with the
specified function.

To import and use `mapInputContext` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapInputContext
```

**Signature**

```ts
export declare const mapInputContext: {
  <Env0, Env>(
    f: (env0: Context.Context<Env0>) => Context.Context<Env>
  ): <In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env0, In, Out>
  <Env0, Env, In, Out>(
    self: Schedule<Env, In, Out>,
    f: (env0: Context.Context<Env0>) => Context.Context<Env>
  ): Schedule<Env0, In, Out>
}
```
