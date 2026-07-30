Package: `@effect/platform-browser`<br />
Module: `BrowserStream`<br />

## BrowserStream.fromEventListenerWindow

Creates a `Stream` from window.addEventListener.

**Signature**

```ts
declare const fromEventListenerWindow: <K extends keyof WindowEventMap>(type: K, options?: boolean | { readonly capture?: boolean; readonly passive?: boolean; readonly once?: boolean; readonly bufferSize?: number | "unbounded" | undefined; } | undefined) => Stream.Stream<WindowEventMap[K], never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserStream.ts#L12)

Since v1.0.0