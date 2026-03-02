Package: `effect`<br />
Module: `Entity`<br />

## Entity.make

Creates a new `Entity` of the specified `type` which will accept messages
that adhere to the provided schemas.

**Signature**

```ts
declare const make: <const Type extends string, Rpcs extends ReadonlyArray<Rpc.Any>>(type: Type, protocol: Rpcs) => Entity<Type, Rpcs[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L382)

Since v4.0.0