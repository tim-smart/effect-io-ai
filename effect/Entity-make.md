Package: `@effect/cluster`<br />
Module: `Entity`<br />

## Entity.make

Creates a new `Entity` of the specified `type` which will accept messages
that adhere to the provided schemas.

**Signature**

```ts
declare const make: <Rpcs extends ReadonlyArray<Rpc.Any>>(type: string, protocol: Rpcs) => Entity<Rpcs[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Entity.ts#L354)

Since v1.0.0