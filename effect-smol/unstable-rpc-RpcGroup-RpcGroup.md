Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.RpcGroup

A collection of RPC definitions that can be composed, annotated, and
converted into server handlers or layers.

**Signature**

```ts
export interface RpcGroup<in out R extends Rpc.Any> extends Pipeable {
  new(_: never): {}

  readonly [TypeId]: typeof TypeId
  readonly requests: ReadonlyMap<string, R>
  readonly annotations: Context.Context<never>

  /**
   * Add one or more procedures to the group.
   */
  add<const Rpcs2 extends ReadonlyArray<Rpc.Any>>(
    ...rpcs: Rpcs2
  ): RpcGroup<R | Rpcs2[number]>

  /**
   * Merge this group with one or more other groups.
   */
  merge<const Groups extends ReadonlyArray<Any>>(
    ...groups: Groups
  ): RpcGroup<R | Rpcs<Groups[number]>>

  /**
   * Omit one or more procedures from the group.
   */
  omit<const Tags extends ReadonlyArray<R["_tag"]>>(
    ...tags: Tags
  ): RpcGroup<Exclude<R, { readonly _tag: Tags[number] }>>

  /**
   * Add middleware to all the procedures added to the group until this point.
   */
  middleware<M extends RpcMiddleware.AnyService>(middleware: M): RpcGroup<Rpc.AddMiddleware<R, M>>

  /**
   * Add a prefix to the procedures in this group, returning a new group
   */
  prefix<const Prefix extends string>(prefix: Prefix): RpcGroup<Rpc.Prefixed<R, Prefix>>

  /**
   * Implement the handlers for the procedures in this group, returning a
   * context object.
   */
  toHandlers<
    Handlers extends HandlersFrom<R>,
    EX = never,
    RX = never
  >(
    build:
      | Handlers
      | Effect.Effect<Handlers, EX, RX>
  ): Effect.Effect<
    Context.Context<Rpc.ToHandler<R>>,
    EX,
    | RX
    | HandlersServices<R, Handlers>
  >

  /**
   * Implement the handlers for the procedures in this group.
   */
  toLayer<
    Handlers extends HandlersFrom<R>,
    EX = never,
    RX = never
  >(
    build:
      | Handlers
      | Effect.Effect<Handlers, EX, RX>
  ): Layer.Layer<
    Rpc.ToHandler<R>,
    EX,
    | Exclude<RX, Scope>
    | HandlersServices<R, Handlers>
  >

  of<const Handlers extends HandlersFrom<R>>(handlers: Handlers): Handlers

  /**
   * Implement a single handler from the group.
   */
  toLayerHandler<
    const Tag extends R["_tag"],
    Handler extends HandlerFrom<R, Tag>,
    EX = never,
    RX = never
  >(
    tag: Tag,
    build:
      | Handler
      | Effect.Effect<Handler, EX, RX>
  ): Layer.Layer<
    Rpc.Handler<Tag>,
    EX,
    | Exclude<RX, Scope>
    | HandlerServices<R, Tag, Handler>
  >

  /**
   * Retrieve a handler for a specific procedure in the group.
   */
  accessHandler<const Tag extends R["_tag"]>(tag: Tag): Effect.Effect<
    (
      payload: Rpc.Payload<Extract<R, { readonly _tag: Tag }>>,
      options: {
        readonly client: Rpc.ServerClient
        readonly requestId: RequestId
        readonly headers: Headers
      }
    ) => Rpc.ResultFrom<Extract<R, { readonly _tag: Tag }>, never>,
    never,
    Rpc.Handler<Tag>
  >

  /**
   * Annotate the group with a value.
   */
  annotate<I, S>(service: Context.Key<I, S>, value: S): RpcGroup<R>

  /**
   * Annotate the Rpc's above this point with a value.
   */
  annotateRpcs<I, S>(service: Context.Key<I, S>, value: S): RpcGroup<R>

  /**
   * Annotate the group with the provided annotations.
   */
  annotateMerge<S>(annotations: Context.Context<S>): RpcGroup<R>

  /**
   * Annotate the Rpc's above this point with the provided annotations.
   */
  annotateRpcsMerge<S>(annotations: Context.Context<S>): RpcGroup<R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcGroup.ts#L49)

Since v4.0.0