Package: `effect`<br />
Module: `Effect`<br />

## Effect.runPromiseExitWith

Runs an effect and returns a Promise of Exit with provided services.

**When to use**

Use when you already have a `Context` and need Promise interop that preserves
success and failure as an `Exit`.

**Example** (Running with services as an Exit promise)

```ts
import { Context, Effect, Exit } from "effect"

interface Database {
  query: (sql: string) => string
}

const Database = Context.Service<Database>("Database")

const services = Context.make(Database, {
  query: (sql) => `Result for: ${sql}`
})

const program = Effect.gen(function*() {
  const db = yield* Database
  return db.query("SELECT * FROM users")
})

Effect.runPromiseExitWith(services)(program).then((exit) => {
  if (Exit.isSuccess(exit)) {
    console.log("Success:", exit.value)
  }
})
```

**Signature**

```ts
declare const runPromiseExitWith: <R>(context: Context.Context<R>) => <A, E>(effect: Effect<A, E, R>, options?: RunOptions | undefined) => Promise<Exit.Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L9057)

Since v4.0.0