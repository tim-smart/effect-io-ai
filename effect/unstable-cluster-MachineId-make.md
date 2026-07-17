Package: `effect`<br />
Module: `MachineId`<br />

## MachineId.make

Brands a number as a `MachineId`.

**When to use**

Use to turn a trusted numeric machine id into the branded type when
implementing runner storage adapters or configuring snowflake generation.

**Details**

The branded value is the original number at runtime.

**Gotchas**

`make` does not validate integer input or enforce the snowflake machine-id
range. Snowflake ids encode the machine component modulo 1024.

**See**

- `MachineId` for the schema that validates branded integer machine identifiers

**Signature**

```ts
declare const make: (id: number) => MachineId
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MachineId.ts#L54)

Since v4.0.0