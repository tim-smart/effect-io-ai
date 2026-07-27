Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.toCodeDocument

Generates TypeScript source for live schema representations and their definitions.

**When to use**

Use when custom declarations and checks provide `toCode` callbacks and must be emitted without a central handler registry.

**Gotchas**

Opaque declarations and leaf checks require `toCode` callbacks. Callback results are used directly, and exceptions raised by a callback pass through unchanged.

**Signature**

```ts
declare const toCodeDocument: (document: MultiDocument) => CodeDocument
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L814)

Since v4.0.0