Package: `effect`<br />
Module: `Effect`<br />

## Effect.provide

Provides dependencies to an effect using layers or a context. Use `options.local`
to build the layer every time; by default, layers are shared between provide
calls.

**Example**

```ts
import { Effect, Layer, Context } from "effect"

interface Database {
  readonly query: (sql: string) => Effect.Effect<string>
}

const Database = Context.Service<Database>("Database")

const DatabaseLive = Layer.succeed(Database)({
  query: Effect.fn("Database.query")((sql: string) => Effect.succeed(`Result for: ${sql}`))
})

const program = Effect.gen(function*() {
  const db = yield* Database
  return yield* db.query("SELECT * FROM users")
})

const provided = Effect.provide(program, DatabaseLive)

Effect.runPromise(provided).then(console.log)
// Output: "Result for: SELECT * FROM users"
```

**Signature**

```ts
declare const provide: { <const Layers extends [Layer.Any, ...Array<Layer.Any>]>(layers: Layers, options?: { readonly local?: boolean | undefined; } | undefined): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | Layer.Error<Layers[number]>, Layer.Services<Layers[number]> | Exclude<R, Layer.Success<Layers[number]>>>; <ROut, E2, RIn>(layer: Layer.Layer<ROut, E2, RIn>, options?: { readonly local?: boolean | undefined; } | undefined): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, RIn | Exclude<R, ROut>>; <R2>(context: Context.Context<R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, R2>>; <A, E, R, const Layers extends [Layer.Any, ...Array<Layer.Any>]>(self: Effect<A, E, R>, layers: Layers, options?: { readonly local?: boolean | undefined; } | undefined): Effect<A, E | Layer.Error<Layers[number]>, Layer.Services<Layers[number]> | Exclude<R, Layer.Success<Layers[number]>>>; <A, E, R, ROut, E2, RIn>(self: Effect<A, E, R>, layer: Layer.Layer<ROut, E2, RIn>, options?: { readonly local?: boolean | undefined; } | undefined): Effect<A, E | E2, RIn | Exclude<R, ROut>>; <A, E, R, R2>(self: Effect<A, E, R>, context: Context.Context<R2>): Effect<A, E, Exclude<R, R2>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5596)

Since v2.0.0