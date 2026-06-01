Package: `@effect/platform-browser`<br />
Module: `Permissions`<br />

## Permissions.layer

Provides the `Permissions` service using the browser `navigator.permissions` API.

**When to use**

Use when you need a live browser `Permissions` service backed by the ambient
`navigator.permissions` implementation.

**Details**

`query` delegates to `navigator.permissions.query({ name })` and wraps
rejected browser operations in `PermissionsError`.

**Signature**

```ts
declare const layer: Layer.Layer<Permissions, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/Permissions.ts#L155)

Since v4.0.0