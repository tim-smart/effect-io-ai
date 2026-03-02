Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.InputMetadata

Metadata provided to schedule functions containing timing and input information.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"

// Custom schedule that uses input metadata
const metadataAwareSchedule = Schedule.spaced("1 second").pipe(
  Schedule.collectWhile((metadata) =>
    Effect.succeed(metadata.attempt <= 5 && metadata.elapsed < 10000)
  )
)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Console.log("Task execution"),
    metadataAwareSchedule
  )
})
```

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L118)

Since v4.0.0