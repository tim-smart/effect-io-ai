Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.InputMetadata

Metadata provided to schedule functions containing timing and input information.

**Signature**

```ts
export interface InputMetadata<Input> {
  readonly input: Input
  readonly attempt: number
  readonly start: number
  readonly now: number
  readonly elapsed: number
  readonly elapsedSincePrevious: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L88)

Since v4.0.0