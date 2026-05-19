Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.TestConsole.Method

Represents a console method name that can be invoked on the TestConsole.
This type includes all methods available on the Console interface.

**Example** (Typing captured console methods)

```ts
import type { TestConsole } from "effect/testing"

const method: TestConsole.TestConsole.Method = "log"

console.log(method) // "log"
```

**Signature**

```ts
type Method = keyof Console.Console
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L85)

Since v4.0.0