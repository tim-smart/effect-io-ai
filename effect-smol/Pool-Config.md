Package: `effect`<br />
Module: `Pool`<br />

## Pool.Config

Normalized configuration used by a `Pool`.

**Details**

The config stores the acquire effect, size bounds, per-item concurrency,
target utilization, and resizing strategy used by the pool implementation.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L76)

Since v4.0.0