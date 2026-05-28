Package: `effect`<br />
Module: `Envelope`<br />

## Envelope.makeRequest

Constructs a runtime request envelope and attaches the envelope type identifier.

**Details**

Tracing fields are included only when a `traceId` is provided.

**Signature**

```ts
declare const makeRequest: <Rpc extends Rpc.Any>(options: { readonly requestId: Snowflake; readonly address: EntityAddress; readonly tag: Rpc.Tag<Rpc>; readonly payload: Rpc.Payload<Rpc>; readonly headers: Headers.Headers; readonly traceId?: string | undefined; readonly spanId?: string | undefined; readonly sampled?: boolean | undefined; }) => Request<Rpc>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Envelope.ts#L353)

Since v4.0.0