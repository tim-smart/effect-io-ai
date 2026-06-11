Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.WithName

Selects the group with the specified identifier from a union of groups.

**Signature**

```ts
type WithName<Group, Name> = Extract<Group, { readonly identifier: Name }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L167)

Since v4.0.0