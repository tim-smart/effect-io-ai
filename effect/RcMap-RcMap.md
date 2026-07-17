Package: `effect`<br />
Module: `RcMap`<br />

## RcMap.RcMap

An `RcMap` is a reference-counted map data structure that manages the lifecycle
of resources indexed by keys. Resources are lazily acquired and automatically
released when no longer in use.

**When to use**

Use to share scoped resources by key while automatically releasing them after
their last active reference is gone.

**Example** (Inspecting a reference-counted map)

```ts
import { Effect, RcMap } from "effect"

Effect.gen(function*() {
  // Create an RcMap that manages database connections
  const dbConnectionMap = yield* RcMap.make({
    lookup: (dbName: string) =>
      Effect.acquireRelease(
        Effect.succeed(`Connection to ${dbName}`),
        (conn) => Effect.log(`Closing ${conn}`)
      ),
    capacity: 10,
    idleTimeToLive: "5 minutes"
  })

  // The RcMap interface provides access to:
  // - lookup: Function to acquire resources
  // - capacity: Maximum number of resources
  // - idleTimeToLive: Time before idle resources are released
  // - state: Current state of the map

  console.log(`Capacity: ${dbConnectionMap.capacity}`)
}).pipe(Effect.scoped)
```

**See**

- `make` for creating an `RcMap`
- `get` for acquiring or retaining a resource by key

**Signature**

```ts
export interface RcMap<in out K, in out A, in out E = never> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly lookup: (key: K) => Effect.Effect<A, E, Scope.Scope>
  readonly context: Context.Context<never>
  readonly scope: Scope.Scope
  readonly idleTimeToLive: (key: K) => Duration.Duration
  readonly capacity: number
  state: State<K, A, E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RcMap.ts#L73)

Since v3.5.0