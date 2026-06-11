Package: `@effect/platform-browser`<br />
Module: `BrowserRuntime`<br />

## BrowserRuntime.runMain

Runs an effect as the browser main program and interrupts its fiber when the page receives a `beforeunload` event.

**When to use**

Use to launch a browser page, single-page application, demo, or browser test
harness as a root Effect program.

**Details**

Supports both direct and curried call forms. Options are forwarded to
`makeRunMain`, including `disableErrorReporting` and custom `teardown`
behavior.

**Gotchas**

The `beforeunload` interruption is best-effort. Browser teardown may prevent
asynchronous finalizers, network work, timers, or prompts from completing.

**Signature**

```ts
declare const runMain: { (options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Teardown | undefined; }): <E, A>(effect: Effect.Effect<A, E>) => void; <E, A>(effect: Effect.Effect<A, E>, options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Teardown | undefined; }): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserRuntime.ts#L35)

Since v4.0.0