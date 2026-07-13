Package: `effect`<br />
Module: `LayerRef`<br />

## LayerRef.TagClass

Service class shape produced by `LayerRef.Service`.

**When to use**

Use as the public type for classes returned by `LayerRef.Service` when an API
needs to accept, return, or alias the generated service class and its static
helpers.

**Details**

It combines a `Context.Service` tag for the `LayerRef` with default layers and
helper accessors for retrieving, using, and invalidating the cached resource.

**See**

- `Service` for creating concrete `LayerRef` service classes

**Signature**

```ts
export interface TagClass<
  in out Self,
  in out Id extends string,
  in out I,
  in out E,
  in out R,
  in out LE,
  in out Deps extends Layer.Layer<any, any, any>
> extends Context.ServiceClass<Self, Id, LayerRef<I, E>> {
  /**
   * Default layer for the `LayerRef` service, with dependencies applied.
   */
  readonly layer: Layer.Layer<
    Self,
    (Deps extends Layer.Layer<infer _A, infer _E, infer _R> ? _E : never) | LE,
    | Exclude<R, (Deps extends Layer.Layer<infer _A, infer _E, infer _R> ? _A : never)>
    | (Deps extends Layer.Layer<infer _A, infer _E, infer _R> ? _R : never)
  >

  /**
   * Default layer for the `LayerRef` service without provided dependencies.
   */
  readonly layerNoDeps: Layer.Layer<Self, LE, R>

  /**
   * Layer that provides the currently cached context, requiring this service.
   */
  readonly get: Layer.Layer<I, E, Self>

  /**
   * Scoped effect that retrieves the currently cached context through this service.
   */
  readonly contextEffect: Effect.Effect<Context.Context<I>, E, Scope.Scope | Self>

  /**
   * Invalidates the cached context through this service.
   */
  readonly invalidate: Effect.Effect<void, never, Self>

  /**
   * Invalidates the cached context through this service, and reacquires it.
   */
  readonly refresh: Effect.Effect<void, E, Self>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerRef.ts#L212)

Since v4.0.0