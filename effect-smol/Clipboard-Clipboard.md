Package: `@effect/platform-browser`<br />
Module: `Clipboard`<br />

## Clipboard.Clipboard

Service interface for reading from, writing to, and clearing the browser clipboard.

**Signature**

```ts
export interface Clipboard {
  readonly [TypeId]: typeof TypeId
  readonly read: Effect.Effect<ClipboardItems, ClipboardError>
  readonly readString: Effect.Effect<string, ClipboardError>
  readonly write: (items: ClipboardItems) => Effect.Effect<void, ClipboardError>
  readonly writeString: (text: string) => Effect.Effect<void, ClipboardError>
  readonly writeBlob: (blob: Blob) => Effect.Effect<void, ClipboardError>
  readonly clear: Effect.Effect<void, ClipboardError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Clipboard.ts#L34)

Since v4.0.0