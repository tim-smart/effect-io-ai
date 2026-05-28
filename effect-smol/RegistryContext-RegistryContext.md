Package: `@effect/atom-react`<br />
Module: `RegistryContext`<br />

## RegistryContext.RegistryContext

Provides a React context that supplies the `AtomRegistry` used by Atom hooks and
hydration helpers, defaulting to a standalone registry when no provider is
present.

**When to use**

Use to supply an existing `AtomRegistry` through React context when hooks or
hydration helpers need to share registry state that is managed outside
`RegistryProvider`.

**See**

- `RegistryProvider` for creating and providing a registry for a React subtree

**Signature**

```ts
declare const RegistryContext: React.Context<AtomRegistry.AtomRegistry>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/RegistryContext.ts#L61)

Since v4.0.0