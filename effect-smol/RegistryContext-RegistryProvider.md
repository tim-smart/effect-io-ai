Package: `@effect/atom-react`<br />
Module: `RegistryContext`<br />

## RegistryContext.RegistryProvider

Provides a stable `AtomRegistry` to a React subtree, optionally seeding
initial atom values and overriding registry scheduling or idle settings.

**Signature**

```ts
declare const RegistryProvider: (options: { readonly children?: React.ReactNode | undefined; readonly initialValues?: Iterable<readonly [Atom.Atom<any>, any]> | undefined; readonly scheduleTask?: ((f: () => void) => () => void) | undefined; readonly timeoutResolution?: number | undefined; readonly defaultIdleTTL?: number | undefined; }) => React.FunctionComponentElement<React.ProviderProps<AtomRegistry.AtomRegistry>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/RegistryContext.ts#L65)

Since v4.0.0