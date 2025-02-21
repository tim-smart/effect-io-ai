# provideContext

Returns a new schedule with a provided context, eliminating the need for
external dependencies.

**Details**

This function supplies a required `context` to a schedule, allowing it to run
without requiring external dependencies. After calling this function, the
schedule can be used freely without needing to pass a context at execution
time.

This is useful when working with schedules that rely on contextual
information, such as logging services, database connections, or configuration
settings.

To import and use `provideContext` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.provideContext
```

**Signature**

```ts
export declare const provideContext: {
  <R>(context: Context.Context<R>): <Out, In>(self: Schedule<Out, In, R>) => Schedule<Out, In, never>
  <Out, In, R>(self: Schedule<Out, In, R>, context: Context.Context<R>): Schedule<Out, In, never>
}
```
