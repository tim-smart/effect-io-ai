Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.WithIdentifier

Selects the group with the specified identifier from a union of groups.

**Signature**

```ts
type WithIdentifier<Group, Identifier> = Extract<Group, { readonly identifier: Identifier }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L193)

Since v4.0.0