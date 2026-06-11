Package: `effect`<br />
Module: `Snowflake`<br />

## Snowflake.Snowflake.Generator

Stateful generator for runner-local snowflake ids, exposing an unsafe
synchronous `nextUnsafe` operation and an effectful machine id setter.

**Signature**

```ts
export interface Generator {
    readonly nextUnsafe: () => Snowflake
    readonly setMachineId: (machineId: MachineId) => Effect.Effect<void>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Snowflake.ts#L85)

Since v4.0.0