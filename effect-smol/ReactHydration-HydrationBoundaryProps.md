Package: `@effect/atom-react`<br />
Module: `ReactHydration`<br />

## ReactHydration.HydrationBoundaryProps

Props for a boundary that applies dehydrated Atom values to the nearest
`RegistryContext` while rendering its children.

**Signature**

```ts
export interface HydrationBoundaryProps {
  state?: Iterable<Hydration.DehydratedAtom>
  children?: React.ReactNode
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/ReactHydration.ts#L22)

Since v4.0.0