Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.make

Creates an empty `HttpApiGroup` with the supplied identifier.

**Details**

Add endpoints with `add`, provide implementations with `HttpApiBuilder.group`,
and set `topLevel` when the generated client should expose endpoint methods
directly instead of nesting them under the group name.

**Signature**

```ts
declare const make: <const Id extends string, const TopLevel extends boolean = false>(identifier: Id, options?: { readonly topLevel?: TopLevel | undefined; }) => HttpApiGroup<Id, never, TopLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L388)

Since v4.0.0