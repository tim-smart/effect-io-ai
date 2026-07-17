Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ConstraintRequest

A widened endpoint type that preserves request and middleware pipeline phantom fields.

**Signature**

```ts
export interface ConstraintRequest extends Constraint {
  readonly ["~Params"]: Schema.Constraint
  readonly ["~Query"]: Schema.Constraint
  readonly ["~Payload"]: Schema.Constraint
  readonly ["~Headers"]: Schema.Constraint
  readonly ["~Middleware"]: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L303)

Since v4.0.0