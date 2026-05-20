Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.SpanStatus

Lifecycle state of a span, where `Started` records the start time and
`Ended` records the start time, end time, and exit value with which the span
completed.

**Example** (Creating span statuses)

```ts
import { Exit } from "effect"
import type { Tracer } from "effect"

const startTime = 1_000_000_000n
const endTime = 1_500_000_000n

const startedStatus: Tracer.SpanStatus = {
  _tag: "Started",
  startTime
}

const endedStatus: Tracer.SpanStatus = {
  _tag: "Ended",
  startTime,
  endTime,
  exit: Exit.succeed("result")
}

console.log(startedStatus._tag) // "Started"
console.log(endedStatus.endTime - endedStatus.startTime) // 500000000n
```

**Signature**

```ts
type SpanStatus = {
  _tag: "Started"
  startTime: bigint
} | {
  _tag: "Ended"
  startTime: bigint
  endTime: bigint
  exit: Exit.Exit<unknown, unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L120)

Since v2.0.0