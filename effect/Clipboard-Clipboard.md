Package: `@effect/platform-browser`<br />
Module: `Clipboard`<br />

## Clipboard.Clipboard

Defines the service interface for reading from, writing to, and clearing the browser clipboard.

**When to use**

Use when an application needs clipboard operations through an Effect service
so browser failures stay in the error channel.

**Details**

`read` and `write` work with `ClipboardItem` arrays. `readString` and
`writeString` use text, `writeBlob` writes one `Blob`, and `clear` writes an
empty string.

**Gotchas**

Clipboard access generally requires a secure context and may require user
activation, permissions, or a focused document. `ClipboardItem` and non-text
MIME type support varies by browser. Failed browser operations are surfaced
as `ClipboardError`.

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Clipboard.ts#L44)

Since v4.0.0