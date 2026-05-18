Package: `effect`<br />
Module: `Entity`<br />

## Entity.Entity

Represents a cluster entity type and the RPC protocol it can handle.

An entity defines how ids map to shard groups, exposes a sharded client, and
can be registered as a layer using RPC handlers or a mailbox queue.

**Signature**

```ts
export interface Entity<
  in out Type extends string,
  in out Rpcs extends Rpc.Any
> extends Equal.Equal {
  readonly [TypeId]: typeof TypeId
  /**
   * The name of the entity type.
   */
  readonly type: EntityType

  /**
   * A RpcGroup definition for messages which represents the messaging protocol
   * that the entity is capable of processing.
   */
  readonly protocol: RpcGroup.RpcGroup<Rpcs>

  /**
   * Get the shard group for the given EntityId.
   */
  getShardGroup(entityId: EntityId): string

  /**
   * Get the ShardId for the given EntityId.
   */
  getShardId(entityId: EntityId): Effect.Effect<ShardId.ShardId, never, Sharding>

  /**
   * Annotate the entity with a value.
   */
  annotate<I, S>(key: Context.Key<I, S>, value: S): Entity<Type, Rpcs>

  /**
   * Annotate the Rpc's above this point with a value.
   */
  annotateRpcs<I, S>(key: Context.Key<I, S>, value: S): Entity<Type, Rpcs>

  /**
   * Annotate the entity with the given annotations.
   */
  annotateMerge<S>(annotation: Context.Context<S>): Entity<Type, Rpcs>

  /**
   * Annotate the Rpc's above this point with a context object.
   */
  annotateRpcsMerge<S>(context: Context.Context<S>): Entity<Type, Rpcs>

  /**
   * Create a client for this entity.
   */
  readonly client: Effect.Effect<
    (
      entityId: string
    ) => RpcClient.RpcClient.From<
      Rpcs,
      MailboxFull | AlreadyProcessingMessage | PersistenceError
    >,
    never,
    Sharding
  >

  /**
   * Create a Layer from an Entity.
   *
   * It will register the entity with the Sharding service.
   */
  toLayer<
    Handlers extends HandlersFrom<Rpcs>,
    RX = never
  >(
    build: Handlers | Effect.Effect<Handlers, never, RX>,
    options?: {
      readonly maxIdleTime?: Duration.Input | undefined
      readonly concurrency?: number | "unbounded" | undefined
      readonly mailboxCapacity?: number | "unbounded" | undefined
      readonly disableFatalDefects?: boolean | undefined
      readonly defectRetryPolicy?: Schedule.Schedule<any, unknown> | undefined
      readonly spanAttributes?: Record<string, string> | undefined
    }
  ): Layer.Layer<
    never,
    never,
    | Exclude<RX, Scope | CurrentAddress | CurrentRunnerAddress>
    | RpcGroup.HandlersServices<Rpcs, Handlers>
    | Rpc.ServicesClient<Rpcs>
    | Rpc.ServicesServer<Rpcs>
    | Rpc.Middleware<Rpcs>
    | Sharding
  >

  of<Handlers extends HandlersFrom<Rpcs>>(handlers: Handlers): Handlers

  /**
   * Create a Layer from an Entity.
   *
   * It will register the entity with the Sharding service.
   */
  toLayerQueue<
    R,
    RX = never
  >(
    build:
      | ((
        queue: Queue.Dequeue<Envelope.Request<Rpcs>>,
        replier: Replier<Rpcs>
      ) => Effect.Effect<never, never, R>)
      | Effect.Effect<
        (
          queue: Queue.Dequeue<Envelope.Request<Rpcs>>,
          replier: Replier<Rpcs>
        ) => Effect.Effect<never, never, R>,
        never,
        RX
      >,
    options?: {
      readonly maxIdleTime?: Duration.Input | undefined
      readonly mailboxCapacity?: number | "unbounded" | undefined
      readonly disableFatalDefects?: boolean | undefined
      readonly defectRetryPolicy?: Schedule.Schedule<any, unknown> | undefined
      readonly spanAttributes?: Record<string, string> | undefined
    }
  ): Layer.Layer<
    never,
    never,
    | Exclude<RX, Scope | CurrentAddress | CurrentRunnerAddress>
    | R
    | Rpc.ServicesClient<Rpcs>
    | Rpc.ServicesServer<Rpcs>
    | Rpc.Middleware<Rpcs>
    | Sharding
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L87)

Since v4.0.0