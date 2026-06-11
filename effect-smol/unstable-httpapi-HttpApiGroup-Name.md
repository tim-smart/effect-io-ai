Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.Name

Extracts the identifier literal from an `HttpApiGroup`.

**Signature**

```ts
type Name<Group> = Group extends HttpApiGroup<infer _Name, infer _Endpoints, infer _TopLevel> ? _Name
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L175)

Since v4.0.0