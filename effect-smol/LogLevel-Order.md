Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.Order

An `Order` instance for `LogLevel` that defines the severity ordering.

This order treats "All" as the least restrictive level and "None" as the most restrictive,
with Fatal being the most severe actual log level.

**Example**

```ts
import { LogLevel } from "effect"

// Compare log levels using Order
console.log(LogLevel.Order("Error", "Info")) // 1 (Error > Info)
console.log(LogLevel.Order("Debug", "Error")) // -1 (Debug < Error)
console.log(LogLevel.Order("Info", "Info")) // 0 (Info == Info)
```

**Signature**

```ts
declare const Order: Ord.Order<LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L176)

Since v2.0.0