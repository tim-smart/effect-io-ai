Package: `@effect/atom-react`<br />
Module: `RegistryContext`<br />

## RegistryContext.RegistryProvider

Provides a stable `AtomRegistry` to a React subtree, optionally seeding
initial atom values and overriding registry scheduling or idle settings.

**When to use**

Use to scope atom state, scheduling, and idle cleanup to a React subtree.

**Details**

The provider creates one `AtomRegistry` with `AtomRegistry.make`, passes it
through `RegistryContext.Provider`, and forwards `initialValues`,
`scheduleTask`, `timeoutResolution`, and `defaultIdleTTL` only when that
registry is created.

**Gotchas**

Option changes after the first render do not rebuild the registry. When the
provider unmounts, registry disposal is delayed briefly and canceled if the
provider remounts before the timeout fires.

**See**

- `RegistryContext` for the React context supplied by this provider

**Signature**

```ts
declare const RegistryProvider: (options: { readonly children?: React.ReactNode | undefined; readonly initialValues?: Iterable<readonly [Atom.Atom<any>, any]> | undefined; readonly scheduleTask?: ((f: () => void) => () => void) | undefined; readonly timeoutResolution?: number | undefined; readonly defaultIdleTTL?: number | undefined; }) => React.FunctionComponentElement<React.ProviderProps<AtomRegistry.AtomRegistry>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/RegistryContext.ts#L92)

Since v4.0.0