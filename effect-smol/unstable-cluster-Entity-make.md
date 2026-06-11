Package: `effect`<br />
Module: `Entity`<br />

## Entity.make

Creates a new `Entity` of the specified `type` which will accept messages
that adhere to the provided schemas.

**When to use**

Use to define a cluster entity from individual `Rpc` definitions, giving the
cluster runtime a typed protocol for handlers and per-entity clients.

**Details**

The `type` argument is stored as the entity `EntityType`, and the RPC array
is grouped into the entity's `protocol`.

**Gotchas**

RPC tags should be unique within the array. If multiple definitions use the
same tag, the resulting protocol keeps the later definition for that tag.

**See**

- `fromRpcGroup` for creating an entity from an existing `RpcGroup`

**Signature**

```ts
declare const make: <const Type extends string, Rpcs extends ReadonlyArray<Rpc.Any>>(type: Type, protocol: Rpcs) => Entity<Type, Rpcs[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L447)

Since v4.0.0