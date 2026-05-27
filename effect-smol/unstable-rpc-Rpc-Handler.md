Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Handler

Represents the server-side implementation of an RPC.

**Details**

The handler receives the decoded request plus client, request id, headers,
and RPC metadata, and returns either an effectful result or a stream result.

**Signature**

```ts
export interface Handler<Tag extends string> {
  readonly _: unique symbol
  readonly tag: Tag
  readonly handler: (request: any, options: {
    readonly client: ServerClient
    readonly requestId: RequestId
    readonly headers: Headers
    readonly rpc: Any
  }) => Effect<{} | Deferred<any, any>, any> | Stream<any, any>
  readonly context: Context.Context<never>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L242)

Since v4.0.0