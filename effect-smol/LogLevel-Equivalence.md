Package: `effect`<br />
Module: `LogLevel`<br />

## LogLevel.Equivalence

An `Equivalence` instance for log levels using strict equality (`===`).

**Example** (Comparing log levels)

```ts
import { LogLevel } from "effect"

console.log(LogLevel.Equivalence("Error", "Error")) // true
console.log(LogLevel.Equivalence("Error", "Info")) // false
```

**Signature**

```ts
declare const Equivalence: Equ.Equivalence<LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LogLevel.ts#L145)

Since v4.0.0