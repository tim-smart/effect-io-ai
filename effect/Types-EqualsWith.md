Package: `effect`<br />
Module: `Types`<br />

## Types.EqualsWith

Determines if two types are equal, allowing to specify the return types.

**Signature**

```ts
type EqualsWith<A, B, Y, N> = (<T>() => T extends A ? 1 : 2) extends (<T>() => T extends B ? 1 : 2) ? Y : N
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L153)

Since v3.15.0