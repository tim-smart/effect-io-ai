Package: `effect`<br />
Module: `Hydration`<br />

## Hydration.hydrate

Loads dehydrated atom state into a registry.

**Details**

Encoded values are preloaded by serialization key. Entries with a
`resultPromise` update the matching registry node, or preload the resolved value,
when the promise resolves.

**Signature**

```ts
declare const hydrate: (registry: AtomRegistry.AtomRegistry, dehydratedState: Iterable<DehydratedAtom>) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Hydration.ts#L146)

Since v4.0.0