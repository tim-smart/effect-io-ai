Package: `effect`<br />
Module: `LayerRef`<br />

## LayerRef.Service

Creates a service class for a `LayerRef`.

**When to use**

Use when you want to name a shared layer reference as an application service
and expose static helpers for providing, retrieving, and invalidating it.

**Details**

The returned class is a `Context.Service` whose value is a `LayerRef`. It also
includes `.layer`, `.layerNoDeps`, `.get`, `.contextEffect`, and `.invalidate`
helpers so callers do not need to access the `LayerRef` value directly.

**Example** (Defining a refreshable service)

```ts
import { Context, Effect, Layer } from "effect"
import { Service } from "effect/LayerRef"

class Database extends Context.Service<Database, {
  readonly query: Effect.Effect<string>
}>()("Database") {}

const databaseLayer = Layer.succeed(Database, {
  query: Effect.succeed("result")
})

class DatabaseRef extends Service<DatabaseRef>()("DatabaseRef", {
  layer: databaseLayer,
  preload: true
}) {}

const program = Effect.gen(function*() {
  const database = yield* Database
  return yield* database.query
}).pipe(
  Effect.provide(DatabaseRef.get),
  Effect.provide(DatabaseRef.layer)
)
```

**See**

- `make` for creating a `LayerRef` value without defining a service class

**Signature**

```ts
declare const Service: <Self>() => <const Id extends string, I, E, R, X, const Deps extends ReadonlyArray<Layer.Layer<any, any, any>> = [], const Preload extends boolean = never, SE = never, SR = never>(id: Id, options: { readonly layer: Layer.Layer<I, E, R>; readonly dependencies?: Deps | undefined; readonly idleTimeToLive?: Duration.Input | undefined; readonly preload?: Preload | undefined; readonly invalidationSchedule?: Schedule.Schedule<X, unknown, SE, SR> | undefined; }) => TagClass<Self, Id, I, E, R | SR, [Preload] extends [true] ? E : never, Deps[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerRef.ts#L305)

Since v4.0.0