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
  options?:
    | boolean
    | {
        readonly capture?: boolean
        readonly passive?: boolean
        readonly once?: boolean
        readonly bufferSize?: number | "unbounded" | undefined
      }
    | undefined
) => Stream.Stream<DocumentEventMap[K], never, never>
```
