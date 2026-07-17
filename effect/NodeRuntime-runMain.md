Package: `@effect/platform-node-shared`<br />
Module: `NodeRuntime`<br />

## NodeRuntime.runMain

Runs an Effect as the Node process main program, interrupting the fiber on
`SIGINT` or `SIGTERM` and invoking the configured teardown to determine the
process exit code.

**Signature**

```ts
declare const runMain: { (options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Runtime.Teardown | undefined; }): <E, A>(effect: Effect<A, E>) => void; <E, A>(effect: Effect<A, E>, options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Runtime.Teardown | undefined; }): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node-shared/src/NodeRuntime.ts#L22)

Since v4.0.0