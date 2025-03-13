Package: `@effect/cluster`<br />
Module: `Sharding`<br />

## Sharding.messenger

Get an object that allows sending messages to a given entity type.
You can provide a custom send timeout to override the one globally defined.

**Signature**

```ts
declare const messenger: <Msg extends Message.Message.Any>(entityType: RecipentType.EntityType<Msg>) => Effect.Effect<Messenger<Msg>, never, Sharding>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L169)

Since v1.0.0