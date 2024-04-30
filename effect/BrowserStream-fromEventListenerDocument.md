# fromEventListenerDocument

Creates a `Stream` from document.addEventListener.

To import and use `fromEventListenerDocument` from the "BrowserStream" module:

```ts
import * as BrowserStream from "@effect/platform-browser/BrowserStream"
// Can be accessed like this
BrowserStream.fromEventListenerDocument
```

**Signature**

```ts
export declare const fromEventListenerDocument: <K extends keyof DocumentEventMap>(
  type: K,
  options?: boolean | Omit<AddEventListenerOptions, "signal">
) => Stream.Stream<DocumentEventMap[K], never, never>
```
