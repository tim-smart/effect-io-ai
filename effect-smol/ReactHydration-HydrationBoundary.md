Package: `@effect/atom-react`<br />
Module: `ReactHydration`<br />

## ReactHydration.HydrationBoundary

Hydrates dehydrated Atom values into the current Atom registry for a React
subtree.

**When to use**

Use to apply dehydrated Atom state to a React subtree that reads from the
nearest `RegistryContext`.

**Details**

New Atom values are hydrated during render so descendants can read them
immediately, while values for existing Atoms are deferred until after commit
so transition data does not update the current UI before React accepts it.

**See**

- `Hydration.dehydrate` for producing dehydrated Atom state
- `Hydration.hydrate` for lower-level non-React hydration

**Signature**

```ts
declare const HydrationBoundary: React.FC<HydrationBoundaryProps>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/ReactHydration.ts#L63)

Since v4.0.0