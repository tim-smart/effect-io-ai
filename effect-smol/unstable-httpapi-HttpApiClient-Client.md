Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client

The type-safe client shape generated from HTTP API groups, with non-top-level
groups exposed as nested objects and top-level endpoints exposed as methods.

**Signature**

```ts
type Client<Groups, E, R> = Simplify<
  & {
    readonly [Group in Extract<Groups, { readonly topLevel: false }> as HttpApiGroup.Name<Group>]: Client.Group<
      Group,
      Group["identifier"],
      E,
      R
    >
  }
  & {
    readonly [Method in Client.TopLevelMethods<Groups, E, R> as Method[0]]: Method[1]
  }
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L46)

Since v4.0.0