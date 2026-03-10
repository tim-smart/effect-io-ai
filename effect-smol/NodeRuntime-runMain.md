Package: `@effect/platform-node`<br />
Module: `NodeRuntime`<br />

## NodeRuntime.runMain

Helps you run a main effect with built-in error handling, logging, and signal management.

**Details**

This function launches an Effect as the main entry point, setting exit codes
based on success or failure, handling interrupts (e.g., Ctrl+C), and optionally
logging errors. By default, it logs errors and uses a "pretty" format, but both
behaviors can be turned off. You can also provide custom teardown logic to
finalize resources or produce different exit codes.

**Options**

An optional object that can include:
- `disableErrorReporting`: Turn off automatic error logging.
- `teardown`: Provide custom finalization logic.

**When to Use**

Use this function to run an Effect as your application’s main program, especially
when you need structured error handling, log management, interrupt support,
or advanced teardown capabilities.

**Signature**

```ts
declare const runMain: { (options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Runtime.Teardown | undefined; }): <E, A>(effect: Effect<A, E>) => void; <E, A>(effect: Effect<A, E>, options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Runtime.Teardown | undefined; }): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeRuntime.ts#L34)

Since v1.0.0