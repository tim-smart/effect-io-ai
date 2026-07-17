Package: `effect`<br />
Module: `Pool`<br />

## Pool.Pool

A `Pool<A, E>` is a pool of items of type `A`, each of which may be
associated with the acquisition and release of resources. An attempt to get
an item `A` from a pool may fail with an error of type `E`.

**When to use**

Use when you need to share a bounded set of scoped resources across fibers
while the pool manages acquisition, reuse, and release.

**See**

- `make` for creating a pool with size bounds
- `makeWithTTL` for creating a pool with idle item expiration
- `makeWithStrategy` for creating a pool with a custom strategy
- `get` for acquiring an item from a pool
- `invalidate` for removing a broken item from the pool

**Signature**

```ts
export interface Pool<in out A, in out E = never> extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly config: Config<A, E>
  readonly state: State<A, E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pool.ts#L50)

Since v2.0.0