Package: `effect`<br />
Module: `Snowflake`<br />

## Snowflake.Snowflake.Parts

Decoded components of a snowflake id: Unix timestamp milliseconds, machine id,
and sequence number.

**Signature**

```ts
export interface Parts {
    readonly timestamp: number
    readonly machineId: MachineId
    readonly sequence: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Snowflake.ts#L79)

Since v4.0.0