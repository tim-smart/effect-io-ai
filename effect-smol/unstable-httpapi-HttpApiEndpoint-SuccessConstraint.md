Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.SuccessConstraint

Constraint for success response schemas, allowing either a single schema or a
readonly array of schemas.

**Signature**

```ts
type SuccessConstraint = Schema.Top | ReadonlyArray<Schema.Top>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L1101)

Since v4.0.0