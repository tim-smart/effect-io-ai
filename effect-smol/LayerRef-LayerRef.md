Package: `effect`<br />
Module: `LayerRef`<br />

## LayerRef.LayerRef

A refreshable reference to a single layer-built service context.

**When to use**

Use when you want to share one scoped layer resource across many users while
retaining the ability to invalidate it and rebuild it later.

**Details**

A `LayerRef` is the unkeyed counterpart to a layer cache: it lazily builds the
layer on first use, reuses the resulting context while it is borrowed or kept
idle, and can invalidate the cached context so the next use rebuilds it.

**See**

- `make` for constructing a `LayerRef` from a layer
- `Service` for defining a `LayerRef` as a service class

**Signature**

```ts
export interface LayerRef<in out I, in out E = never> {
  readonly [TypeId]: typeof TypeId

  /**
   * The underlying reference-counted cache that stores the built context.
   */
  readonly rcRef: RcRef.RcRef<Context.Context<I>, E>

  /**
   * Layer that provides the currently cached context, acquiring it if needed.
   */
  readonly get: Layer.Layer<I, E>

  /**
   * Scoped effect that retrieves the currently cached context, acquiring it if needed.
   */
  readonly contextEffect: Effect.Effect<Context.Context<I>, E, Scope.Scope>

  /**
   * Invalidates the cached context so the next use rebuilds the layer.
   */
  readonly invalidate: Effect.Effect<void>

  /**
   * Invalidates the cached context so the next use rebuilds the layer, and
   * reacquires it.
   */
  readonly refresh: Effect.Effect<void, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerRef.ts#L43)

Since v4.0.0