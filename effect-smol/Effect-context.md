Package: `effect`<br />
Module: `Effect`<br />

## Effect.context

Returns the complete context.

This function allows you to access all services that are currently available
in the effect's environment. This can be useful for debugging, introspection,
or when you need to pass the entire context to another function.

**Example**

```ts
import { Console, Effect, Option, Context } from "effect"

const Logger = Context.Service<{
  log: (msg: string) => void
}>("Logger")
const Database = Context.Service<{
  query: (sql: string) => string
}>("Database")

const program = Effect.gen(function*() {
  const allServices = yield* Effect.context()

  // Check if specific services are available
  const loggerOption = Context.getOption(allServices, Logger)
  const databaseOption = Context.getOption(allServices, Database)

  yield* Console.log(`Logger available: ${Option.isSome(loggerOption)}`)
  yield* Console.log(`Database available: ${Option.isSome(databaseOption)}`)
})

const context = Context.make(Logger, { log: console.log })
  .pipe(Context.add(Database, { query: () => "result" }))

const provided = Effect.provideContext(program, context)
```

**Signature**

```ts
declare const context: <R = never>() => Effect<Context.Context<R>, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5513)

Since v2.0.0