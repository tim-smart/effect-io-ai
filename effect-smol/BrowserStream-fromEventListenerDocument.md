Package: `@effect/platform-browser`<br />
Module: `BrowserStream`<br />

## BrowserStream.fromEventListenerDocument

Creates a `Stream` from `document.addEventListener`.

By default, the underlying buffer is unbounded in size. You can customize the
buffer size an object as the second argument with the `bufferSize` field.

**Signature**

```ts
declare const fromEventListenerDocument: <K extends keyof DocumentEventMap>(type: K, options?: boolean | { readonly capture?: boolean; readonly passive?: boolean; readonly once?: boolean; readonly bufferSize?: number | undefined; } | undefined) => Stream.Stream<DocumentEventMap[K], never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserStream.ts#L35)

Since v1.0.0