Package: `effect`<br />
Module: `Pool`<br />

## Pool.Config

Normalized configuration used by a `Pool`.

**When to use**

Use as the normalized, read-only description of how a pool acquires, sizes,
shares, and resizes its items after construction.

**Details**

The config stores the acquire effect, size bounds, per-item concurrency,
target utilization, and resizing strategy used by the pool implementation.

**See**

- `Pool` for the value exposing this configuration
- `State` for mutable runtime state instead of static configuration
- `Strategy` for the resizing and reclamation contract stored on the config

**Signature**

```ts
export interface Config<A, E> {
  readonly acquire: Effect.Effect<A, E, Scope.Scope>
  readonly concurrency: number
  readonly minSize: number
  readonly maxSize: number
  readonly strategy: Strategy<A, E>
  readonly targetUtilization: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L112)

Since v4.0.0