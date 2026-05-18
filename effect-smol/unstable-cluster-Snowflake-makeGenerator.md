Package: `effect`<br />
Module: `Snowflake`<br />

## Snowflake.makeGenerator

Creates a stateful snowflake generator using `Clock`.

The generator starts with a random machine id, never moves generated timestamps
backward, resets the sequence each millisecond, and advances the timestamp when
more than 4096 ids are requested in the same millisecond.

**Signature**

```ts
declare const makeGenerator: Effect.Effect<Snowflake.Generator, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Snowflake.ts#L219)

Since v4.0.0