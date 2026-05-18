Package: `effect`<br />
Module: `Snowflake`<br />

## Snowflake.make

Packs a timestamp, machine id, and sequence number into a branded snowflake id,
using the custom snowflake epoch and 10-bit machine id and 12-bit sequence
fields.

**Signature**

```ts
declare const make: (options: { readonly machineId: MachineId; readonly sequence: number; readonly timestamp: number; }) => Snowflake
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Snowflake.ts#L155)

Since v4.0.0