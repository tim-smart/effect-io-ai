Package: `@effect/platform`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.make

An `HttpApiGroup` is a collection of `HttpApiEndpoint`s. You can use an `HttpApiGroup` to
represent a portion of your domain.

The endpoints can be implemented later using the `HttpApiBuilder.group` api.

**Signature**

```ts
declare const make: <const Id extends string, const TopLevel extends (true | false) = false>(identifier: Id, options?: { readonly topLevel?: TopLevel | undefined; }) => HttpApiGroup<Id, never, never, never, TopLevel>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpApiGroup.ts#L420)

Since v1.0.0