Package: `effect`<br />
Module: `Hydration`<br />

## Hydration.hydrate

Applies dehydrated atom state to a registry.

**When to use**

Use to preload serialized atom values into a target registry before those
atoms are read.

**Details**

Encoded values are preloaded by serialization key. Entries with a
`resultPromise` update the matching registry node, or preload the resolved value,
when the promise resolves.

**Signature**

```ts
declare const hydrate: (registry: AtomRegistry.AtomRegistry, dehydratedState: Iterable<DehydratedAtom>) => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Hydration.ts#L128)

Since v4.0.0