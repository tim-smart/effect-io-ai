Package: `effect`<br />
Module: `LayerRef`<br />

## LayerRef.make

Creates a `LayerRef` from a `Layer`.

**When to use**

Use when you have one layer-built resource that should be shared, optionally
kept alive while idle, and refreshed on demand.

**Details**

The layer is built lazily on first use unless `preload` is `true`.
`idleTimeToLive` keeps the context cached after it stops being used, and
`invalidationSchedule` can periodically invalidate it. When `preload` is
`true`, scheduled invalidation also reacquires the context.

**Gotchas**

Invalidation does not revoke contexts already borrowed by active scopes; those
contexts remain usable until their scopes close.

**Example** (Sharing one layer-built service)

```ts
import { Context, Effect, Layer } from "effect"
import { make } from "effect/LayerRef"

class Database extends Context.Service<Database, {
  readonly query: Effect.Effect<string>
}>()("Database") {}

const databaseLayer = Layer.succeed(Database, {
  query: Effect.succeed("result")
})

const query = Effect.gen(function*() {
  const database = yield* Database
  return yield* database.query
})

const program = Effect.scoped(
  Effect.gen(function*() {
    const ref = yield* make(databaseLayer, {
      idleTimeToLive: "5 seconds"
    })

    const result = yield* Effect.provide(query, ref.get)

    yield* ref.invalidate

    return result
  })
)
```

**See**

- `Service` for defining a reusable service class around a `LayerRef`

**Signature**

```ts
declare const make: <I, E, R, X, const Preload extends boolean = never, SE = never, SR = never>(layer: Layer.Layer<I, E, R>, options?: { readonly idleTimeToLive?: Duration.Input | undefined; readonly preload?: Preload | undefined; readonly invalidationSchedule?: Schedule.Schedule<X, unknown, SE, SR> | undefined; } | undefined) => Effect.Effect<LayerRef<I, E>, [Preload] extends [true] ? E : never, Scope.Scope | R | SR>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerRef.ts#L132)

Since v4.0.0