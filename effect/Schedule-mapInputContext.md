# mapInputContext

Transforms the context being provided to this schedule with the
specified function.

To import and use `mapInputContext` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapInputContext
undefined

**Signature**

```ts
export declare const mapInputContext: {
  <R0, R>(
    f: (env0: Context.Context<R0>) => Context.Context<R>
  ): <Out, In>(self: Schedule<Out, In, R>) => Schedule<Out, In, R0>
  <Out, In, R, R0>(
    self: Schedule<Out, In, R>,
    f: (env0: Context.Context<R0>) => Context.Context<R>
  ): Schedule<Out, In, R0>
}
```
