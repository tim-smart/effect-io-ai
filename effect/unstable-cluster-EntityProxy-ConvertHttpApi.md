Package: `effect`<br />
Module: `EntityProxy`<br />

## EntityProxy.ConvertHttpApi

Type-level conversion used by `toHttpApiGroup`.

**Details**

For each entity RPC, this creates a POST endpoint at `/<tag>/:entityId` and a
discard endpoint at `/<tag>/:entityId/discard`, including cluster client
errors.

**Signature**

```ts
type ConvertHttpApi<Rpcs> = Rpcs extends Rpc.Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ?
    | HttpApiEndpoint.HttpApiEndpoint<
      _Tag,
      "POST",
      `/${Lowercase<_Tag>}/:entityId`,
      Schema.Struct<{ entityId: typeof EntityId }>,
      never,
      _Payload,
      never,
      _Success,
      | _Error
      | typeof MailboxFull
      | typeof AlreadyProcessingMessage
      | typeof PersistenceError
    >
    | HttpApiEndpoint.HttpApiEndpoint<
      `${_Tag}Discard`,
      "POST",
      `/${Lowercase<_Tag>}/:entityId/discard`,
      Schema.Struct<{ entityId: typeof EntityId }>,
      never,
      _Payload,
      never,
      Schema.Void,
      typeof MailboxFull | typeof AlreadyProcessingMessage | typeof PersistenceError
    >
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/EntityProxy.ts#L230)

Since v4.0.0