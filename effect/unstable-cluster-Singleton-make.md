Package: `effect`<br />
Module: `Singleton`<br />

## Singleton.make

Creates a layer that registers a singleton effect with `Sharding` under the
specified name and optional shard group.

**When to use**

Use to register a cluster-wide background effect as a `Layer`, so the effect
is started only by the runner that currently owns the singleton's shard.

**Details**

The returned layer requires `Sharding` and the services needed by `run`,
except for `Scope`. The registration is scoped to the layer; closing the
layer removes the singleton registration and stops the singleton fiber if it
is running.

**Gotchas**

- Registering the same singleton name in the same shard group more than once
  dies during registration.
- A `run` effect that completes normally is kept alive until the registration
  scope closes or shard ownership moves.
- Failures from `run` are converted to defects, so handle expected failures
  inside `run` when the singleton should keep running.

**See**

- `Sharding` for the lower-level service that registers singletons and manages shard ownership

**Signature**

```ts
declare const make: <E, R>(name: string, run: Effect.Effect<void, E, R>, options?: { readonly shardGroup?: string | undefined; }) => Layer.Layer<never, never, Sharding | Exclude<R, Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Singleton.ts#L46)

Since v4.0.0