Package: `@effect/platform-browser`<br />
Module: `BrowserRuntime`<br />

## BrowserRuntime.runMain

Runs an effect as the browser main program and interrupts its fiber when the page receives a `beforeunload` event.

**Signature**

```ts
declare const runMain: { (options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Teardown | undefined; }): <E, A>(effect: Effect.Effect<A, E>) => void; <E, A>(effect: Effect.Effect<A, E>, options?: { readonly disableErrorReporting?: boolean | undefined; readonly teardown?: Teardown | undefined; }): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserRuntime.ts#L34)

Since v4.0.0