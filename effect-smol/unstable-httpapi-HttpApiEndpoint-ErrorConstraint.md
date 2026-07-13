Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ErrorConstraint

Constraint for error response schemas, allowing either a single schema or a
readonly array of schemas.

**Signature**

```ts
type ErrorConstraint = Schema.Top | ReadonlyArray<Schema.Top>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L946)

Since v4.0.0