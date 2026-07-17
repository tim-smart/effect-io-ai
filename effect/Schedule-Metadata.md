Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Metadata

Extended metadata that includes both input metadata and the output value from the schedule.

**Signature**

```ts
export interface Metadata<Output = unknown, Input = unknown> extends InputMetadata<Input> {
  readonly output: Output
  readonly duration: Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L103)

Since v4.0.0