Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.TestConsole.Entry

Represents a single console method invocation captured by the TestConsole.
Each entry contains the method name and the parameters passed to it.

**When to use**

Use to inspect or type one captured console invocation.

**Example** (Typing captured console entries)

```ts
import type { TestConsole } from "effect/testing"

const entry: TestConsole.TestConsole.Entry = {
  method: "error",
  parameters: ["not found"]
}

console.log(entry.method) // "error"
console.log(entry.parameters) // ["not found"]
```

**Signature**

```ts
export interface Entry {
    readonly method: Method
    readonly parameters: ReadonlyArray<unknown>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L140)

Since v4.0.0