Package: `@effect/cluster`<br />
Module: `Entity`<br />

## Entity.make

Creates a new `Entity` of the specified `type` which will accept messages
that adhere to the provided schemas.

**Signature**

```ts
declare const make: <const Type extends string, Rpcs extends ReadonlyArray<Rpc.Any>>(type: Type, protocol: Rpcs) => Entity<Type, Rpcs[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Entity.ts#L392)

Since v1.0.0