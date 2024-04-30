# fromEventListenerWindow

Creates a `Stream` from window.addEventListener.

To import and use `fromEventListenerWindow` from the "BrowserStream" module:

```ts
import * as BrowserStream from "@effect/platform-browser/BrowserStream"
// Can be accessed like this
BrowserStream.fromEventListenerWindow
```

**Signature**

```ts
export declare const fromEventListenerWindow: <K extends keyof WindowEventMap>(
  type: K,
  options?: boolean | Omit<AddEventListenerOptions, "signal">
) => Stream.Stream<WindowEventMap[K], never, never>
```
