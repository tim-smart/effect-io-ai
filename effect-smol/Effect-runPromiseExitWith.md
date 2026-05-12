Package: `effect`<br />
Module: `Effect`<br />

## Effect.runPromiseExitWith

Runs an effect and returns a Promise of Exit with provided services.

**Example**

```ts
import { Effect, Exit, Context } from "effect"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8597)

Since v4.0.0