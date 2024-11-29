# provideContext

Returns a new schedule with its context provided to it, so the
resulting schedule does not require any context.

To import and use `provideContext` from the "Schedule" module:

ts
import \* as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.provideContext
undefined

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <Out, In>(self: Schedule<Out, In, R>) => Schedule<Out, In, never>
  <Out, In, R>(self: Schedule<Out, In, R>, context: Context.Context<R>): Schedule<Out, In, never>
}
```
