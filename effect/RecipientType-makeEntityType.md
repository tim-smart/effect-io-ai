Package: `@effect/cluster`<br />
Module: `RecipientType`<br />

## RecipientType.makeEntityType

Given a name and a schema for the protocol, constructs an EntityType.

**Signature**

```ts
declare const makeEntityType: <Msg extends Message.Message.Any, I>(name: string, schema: Schema.Schema<Msg, I>) => EntityType<Msg>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RecipientType.ts#L112)

Since v1.0.0