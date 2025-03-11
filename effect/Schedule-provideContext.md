## provideContext

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

**Signature**

```ts
declare const provideContext: { <R>(context: Context.Context<R>): <Out, In>(self: Schedule<Out, In, R>) => Schedule<Out, In, never>; <Out, In, R>(self: Schedule<Out, In, R>, context: Context.Context<R>): Schedule<Out, In, never>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L1445)

Since v2.0.0