Package: `effect`<br />
Module: `EntityProxy`<br />

## EntityProxy.ConvertRpcs

Type-level conversion used by `toRpcGroup`.

**Details**

For each entity RPC, this creates a prefixed request RPC and a discard RPC
whose payload includes `entityId`, and whose errors include cluster client
errors.

**Signature**

```ts
type ConvertRpcs<Rpcs, Prefix> = Rpcs extends Rpc.Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ?
    | Rpc.Rpc<
      `${Prefix}.${_Tag}`,
      Schema.Struct<{
        entityId: typeof Schema.String
        payload: _Payload
      }>,
      _Success,
      Schema.Codec<
        _Error["Type"] | MailboxFull | AlreadyProcessingMessage | PersistenceError,
        | _Error["Encoded"]
        | typeof MailboxFull["Encoded"]
        | typeof AlreadyProcessingMessage["Encoded"]
        | typeof PersistenceError["Encoded"],
        _Error["DecodingServices"],
        _Error["EncodingServices"]
      >
    >
    | Rpc.Rpc<
      `${Prefix}.${_Tag}Discard`,
      Schema.Struct<{
        entityId: typeof Schema.String
        payload: _Payload
      }>,
      typeof Schema.Void,
      Schema.Union<[
        typeof MailboxFull,
        typeof AlreadyProcessingMessage,
        typeof PersistenceError
      ]>
    >
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityProxy.ts#L115)

Since v4.0.0