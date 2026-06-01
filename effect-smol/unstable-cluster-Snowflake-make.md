Package: `effect`<br />
Module: `Snowflake`<br />

## Snowflake.make

Creates a branded snowflake id from a timestamp, machine id, and sequence number,
using the custom snowflake epoch and 10-bit machine id and 12-bit sequence
fields.

**When to use**

Use to pack known timestamp, machine id, and sequence parts into a branded
snowflake id.

**Gotchas**

Machine id values are encoded modulo 1024, and sequence values modulo 4096;
values outside those ranges wrap instead of being rejected.

**See**

- `toParts` for the inverse operation that decodes a snowflake id into timestamp, machine id, and sequence parts
- `makeGenerator` for generating ids with Clock-backed timestamp and sequence management

**Signature**

```ts
declare const make: (options: { readonly machineId: MachineId; readonly sequence: number; readonly timestamp: number; }) => Snowflake
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Snowflake.ts#L170)

Since v4.0.0