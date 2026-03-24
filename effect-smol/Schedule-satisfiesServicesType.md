Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.satisfiesServicesType

Ensures that the provided schedule respects a specified context type.

**Example**

```ts
import { Schedule } from "effect"

// Define service interfaces (type-level only)
interface Logger {
  readonly log: (message: string) => void
}

interface Database {
  readonly query: (sql: string) => Promise<unknown>
}

// Ensure schedule requires Logger service
const loggerSchedule = Schedule.spaced("1 second").pipe(
  Schedule.satisfiesServicesType<Logger>()
)

// Ensure schedule requires both Logger and Database services
const multiServiceSchedule = Schedule.exponential("100 millis").pipe(
  Schedule.satisfiesServicesType<Logger | Database>()
)
```

**Signature**

```ts
declare const satisfiesServicesType: <T>() => <Env extends T, Output = never, Input = unknown, Error = never>(self: Schedule<Output, Input, Error, Env>) => Schedule<Output, Input, Error, Env>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L3333)

Since v2.0.0