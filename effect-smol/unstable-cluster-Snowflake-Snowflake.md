Package: `effect`<br />
Module: `Snowflake`<br />

## Snowflake.Snowflake

Branded bigint identifier composed from a timestamp, machine id, and per-machine
sequence number.

**Signature**

```ts
type Snowflake = Brand.Branded<bigint, TypeId>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Snowflake.ts#L56)

Since v4.0.0