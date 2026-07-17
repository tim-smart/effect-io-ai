Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.Identifier

Extracts the identifier literal from an `HttpApiGroup`.

**Signature**

```ts
type Identifier<Group> = Group extends Constraint ? Group["identifier"] : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L201)

Since v4.0.0