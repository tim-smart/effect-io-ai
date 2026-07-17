Package: `effect`<br />
Module: `Entity`<br />

## Entity.HandlersFrom

Maps each RPC in an entity protocol to the handler function expected by
`Entity.toLayer`.

**Details**

Each handler receives the entity request envelope for that RPC and returns the
RPC result or a supported RPC wrapper.

**Signature**

```ts
type HandlersFrom<Rpc> = {
  readonly [Current in Rpc as Current["_tag"]]: (
    envelope: Request<Current>
  ) => Rpc.WrapperOr<Rpc.ResultFrom<Current, any>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Entity.ts#L222)

Since v4.0.0