Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ExcludeProvides

Removes the services provided by middleware for the specified RPC tag from an
environment type.

**Signature**

```ts
type ExcludeProvides<Env, R, Tag> = Exclude<
  Env,
  ExtractProvides<R, Tag>
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L746)

Since v4.0.0