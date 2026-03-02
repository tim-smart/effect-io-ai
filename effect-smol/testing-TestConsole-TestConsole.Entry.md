Package: `effect`<br />
Module: `TestConsole`<br />

## TestConsole.TestConsole.Entry

Represents a single console method invocation captured by the TestConsole.
Each entry contains the method name and the parameters passed to it.

**Example**

```ts
// Entry represents captured console calls with their method and parameters
// Each entry contains: { method: string, parameters: ReadonlyArray<unknown> }
// Used internally by TestConsole to track all console operations
```

**Signature**

```ts
export interface Entry {
    readonly method: Method
    readonly parameters: ReadonlyArray<unknown>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TestConsole.ts#L95)

Since v4.0.0