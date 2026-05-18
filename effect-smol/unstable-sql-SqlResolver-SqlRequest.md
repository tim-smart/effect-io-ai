Package: `effect`<br />
Module: `SqlResolver`<br />

## SqlResolver.SqlRequest

Request type used by SQL request resolvers, carrying the input payload
together with the resolver's result, error, and environment types.

**Signature**

```ts
export interface SqlRequest<In, A, E, R> extends Request.Request<A, E | Schema.SchemaError, R> {
  readonly payload: In
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SqlResolver.ts#L51)

Since v4.0.0