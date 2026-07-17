Package: `effect`<br />
Module: `Runners`<br />

## Runners.makeRpc

Builds a `Runners` service backed by RPC clients, caching a client per runner
address and dispatching ping, notify, effect, stream, and envelope messages over
the runner protocol.

**Signature**

```ts
declare const makeRpc: Effect.Effect<{ readonly ping: (address: RunnerAddress) => Effect.Effect<void, RunnerUnavailable>; readonly sendLocal: <R extends Rpc.Any>(options: { readonly message: Message.Outgoing<R>; readonly send: <Rpc extends Rpc.Any>(message: Message.IncomingLocal<Rpc>) => Effect.Effect<void, EntityNotAssignedToRunner | MailboxFull | AlreadyProcessingMessage>; readonly simulateRemoteSerialization: boolean; }) => Effect.Effect<void, EntityNotAssignedToRunner | MailboxFull | AlreadyProcessingMessage | PersistenceError>; readonly send: <R extends Rpc.Any>(options: { readonly address: RunnerAddress; readonly message: Message.Outgoing<R>; }) => Effect.Effect<void, EntityNotAssignedToRunner | RunnerUnavailable | MailboxFull | AlreadyProcessingMessage | PersistenceError>; readonly notify: <R extends Rpc.Any>(options: { readonly address: Option.Option<RunnerAddress>; readonly message: Message.Outgoing<R>; readonly discard: boolean; }) => Effect.Effect<void, PersistenceError>; readonly notifyLocal: <R extends Rpc.Any>(options: { readonly message: Message.Outgoing<R>; readonly notify: (options: Message.IncomingLocal<any>) => Effect.Effect<void, EntityNotAssignedToRunner>; readonly discard: boolean; readonly storageOnly?: boolean | undefined; }) => Effect.Effect<void, PersistenceError>; readonly onRunnerUnavailable: (address: RunnerAddress) => Effect.Effect<void>; }, never, Scope | MessageStorage.MessageStorage | ShardingConfig | Snowflake.Generator | RpcClientProtocol>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runners.ts#L536)

Since v4.0.0