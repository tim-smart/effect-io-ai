Package: `effect`<br />
Module: `LayerMap`<br />

## LayerMap.TagClass

Service class shape produced by `LayerMap.Service`.

**Details**

It combines a `Context.Service` tag for the `LayerMap` with default layers
and helper accessors for retrieving, using, and invalidating keyed resources.

**Signature**

```ts
export interface TagClass<
  in out Self,
  in out Id extends string,
  in out K,
  in out I,
  in out E,
  in out R,
  in out LE,
  in out Deps extends Layer.Layer<any, any, any>
> extends Context.ServiceClass<Self, Id, LayerMap<K, I, E>> {
  /**
   * A default layer for the `LayerMap` service.
   */
  readonly layer: Layer.Layer<
    Self,
    (Deps extends Layer.Layer<infer _A, infer _E, infer _R> ? _E : never) | LE,
    | Exclude<R, (Deps extends Layer.Layer<infer _A, infer _E, infer _R> ? _A : never)>
    | (Deps extends Layer.Layer<infer _A, infer _E, infer _R> ? _R : never)
  >

  /**
   * A default layer for the `LayerMap` service without the dependencies provided.
   */
  readonly layerNoDeps: Layer.Layer<Self, LE, R>

  /**
   * Retrieves a Layer for the resources associated with the key.
   */
  readonly get: (key: K) => Layer.Layer<I, E, Self>

  /**
   * Retrieves the context associated with the key.
   */
  readonly contextEffect: (key: K) => Effect.Effect<Context.Context<I>, E, Scope.Scope | Self>

  /**
   * Invalidates the resource associated with the key.
   */
  readonly invalidate: (key: K) => Effect.Effect<void, never, Self>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LayerMap.ts#L283)

Since v3.14.0