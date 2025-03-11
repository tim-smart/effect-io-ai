## fromEventListenerDocument

Creates a `Stream` from document.addEventListener.

**Signature**

```ts
declare const fromEventListenerDocument: <K extends keyof DocumentEventMap>(type: K, options?: boolean | { readonly capture?: boolean; readonly passive?: boolean; readonly once?: boolean; readonly bufferSize?: number | "unbounded" | undefined; } | undefined) => Stream.Stream<DocumentEventMap[K], never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserStream.ts#L26)

Since v1.0.0