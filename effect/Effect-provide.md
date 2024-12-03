# provide

Provides the necessary `Layer`s to an effect, removing its dependency on the
environment.

You can pass multiple layers, a `Context`, `Runtime`, or `ManagedRuntime` to
the effect.

To import and use `provide` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.provide
```

**Example**

```ts
import { Context, Effect, Layer } from "effect"

class Database extends Context.Tag("Database")<
  Database,
  { readonly query: (sql: string) => Effect.Effect<Array<unknown>> }
>() {}

const DatabaseLive = Layer.succeed(Database, {
  // Simulate a database query
  query: (sql: string) => Effect.log(`Executing query: ${sql}`).pipe(Effect.as([]))
})

//      ┌─── Effect<unknown[], never, Database>
//      ▼
const program = Effect.gen(function* () {
  const database = yield* Database
  const result = yield* database.query("SELECT * FROM users")
  return result
})

//      ┌─── Effect<unknown[], never, never>
//      ▼
const runnable = Effect.provide(program, DatabaseLive)

Effect.runPromise(runnable).then(console.log)
// Output:
// timestamp=... level=INFO fiber=#0 message="Executing query: SELECT * FROM users"
// []
```

**Signature**

```ts
export declare const provide: {
  <const Layers extends [Layer.Layer.Any, ...Array<Layer.Layer.Any>]>(
    layers: Layers
  ): <A, E, R>(
    self: Effect<A, E, R>
  ) => Effect<
    A,
    E | { [k in keyof Layers]: Layer.Layer.Error<Layers[k]> }[number],
    | { [k in keyof Layers]: Layer.Layer.Context<Layers[k]> }[number]
    | Exclude<R, { [k in keyof Layers]: Layer.Layer.Success<Layers[k]> }[number]>
  >
  <ROut, E2, RIn>(
    layer: Layer.Layer<ROut, E2, RIn>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, RIn | Exclude<R, ROut>>
  <R2>(context: Context.Context<R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, R2>>
  <R2>(runtime: Runtime.Runtime<R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, R2>>
  <E2, R2>(
    managedRuntime: ManagedRuntime.ManagedRuntime<R2, E2>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E | E2, Exclude<R, R2>>
  <A, E, R, const Layers extends [Layer.Layer.Any, ...Array<Layer.Layer.Any>]>(
    self: Effect<A, E, R>,
    layers: Layers
  ): Effect<
    A,
    E | { [k in keyof Layers]: Layer.Layer.Error<Layers[k]> }[number],
    | { [k in keyof Layers]: Layer.Layer.Context<Layers[k]> }[number]
    | Exclude<R, { [k in keyof Layers]: Layer.Layer.Success<Layers[k]> }[number]>
  >
  <A, E, R, ROut, E2, RIn>(
    self: Effect<A, E, R>,
    layer: Layer.Layer<ROut, E2, RIn>
  ): Effect<A, E | E2, RIn | Exclude<R, ROut>>
  <A, E, R, R2>(self: Effect<A, E, R>, context: Context.Context<R2>): Effect<A, E, Exclude<R, R2>>
  <A, E, R, R2>(self: Effect<A, E, R>, runtime: Runtime.Runtime<R2>): Effect<A, E, Exclude<R, R2>>
  <A, E, E2, R, R2>(
    self: Effect<A, E, R>,
    runtime: ManagedRuntime.ManagedRuntime<R2, E2>
  ): Effect<A, E | E2, Exclude<R, R2>>
}
```
