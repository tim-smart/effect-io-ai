Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.make

An `HttpApiGroup` is a collection of `HttpApiEndpoint`s. You can use an `HttpApiGroup` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.group` api.

**Signature**

```ts
declare const make: <const Id extends string, const TopLevel extends boolean = false>(identifier: Id, options?: { readonly topLevel?: TopLevel | undefined; }) => HttpApiGroup<Id, never, TopLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L312)

Since v4.0.0