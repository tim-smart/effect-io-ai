Package: `effect`<br />
Module: `Reply`<br />

## Reply.serialize

Serializes a `ReplyWithContext` into its encoded wire representation, using the
reply's RPC schema and context and refailing encoding errors as
`MalformedMessage`.

**Signature**

```ts
declare const serialize: <R extends Rpc.Any>(self: ReplyWithContext<R>) => Effect.Effect<Encoded, MalformedMessage>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reply.ts#L426)

Since v4.0.0