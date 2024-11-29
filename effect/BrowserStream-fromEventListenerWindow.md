# fromEventListenerWindow

Creates a `Stream` from window.addEventListener.

To import and use `fromEventListenerWindow` from the "BrowserStream" module:

ts
import \* as BrowserStream from "@effect/platform-browser/BrowserStream"
// Can be accessed like this
BrowserStream.fromEventListenerWindow
undefined

**Signature**

```ts
export declare const fromEventListenerWindow: <K extends keyof WindowEventMap>(
  type: K,
  options?:
    | boolean
    | {
        readonly capture?: boolean
        readonly passive?: boolean
        readonly once?: boolean
        readonly bufferSize?: number | "unbounded" | undefined
      }
    | undefined
) => Stream.Stream<WindowEventMap[K], never, never>
```
