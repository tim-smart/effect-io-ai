Package: `effect`<br />
Module: `Reply`<br />

## Reply.ReplyWithContext

Represents a cluster reply paired with the RPC definition and service context required to
serialize it for transport.

**When to use**

Use to carry a runtime reply together with the RPC schema and services needed
to encode it for storage or transport.

**Signature**

```ts
declare class ReplyWithContext<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reply.ts#L95)

Since v4.0.0