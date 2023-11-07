# provideContext

Returns a new schedule with its context provided to it, so the
resulting schedule does not require any context.

To import and use `provideContext` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <Env>(context: Context.Context<Env>): <In, Out>(self: Schedule<Env, In, Out>) => Schedule<never, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, context: Context.Context<Env>): Schedule<never, In, Out>
}
```
