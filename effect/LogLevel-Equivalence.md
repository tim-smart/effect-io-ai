Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.Equivalence

Equivalence instance for log levels using strict equality (`===`).

**When to use**

Use to compare two `LogLevel` values when only the exact same level should
match.

**Details**

Each log level string, including `All` and `None`, only matches itself.

**Example** (Comparing log levels)

```ts
import { LogLevel } from "effect"

console.log(LogLevel.Equivalence("Error", "Error")) // true
console.log(LogLevel.Equivalence("Error", "Info")) // false
```

**See**

- `Order` for severity ordering rather than exact level equality
- `isGreaterThanOrEqualTo` for minimum-threshold checks

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<LogLevel>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LogLevel.ts#L164)

Since v4.0.0