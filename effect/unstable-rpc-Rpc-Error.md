Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Error

Extracts the decoded error value type from an `Rpc`, including middleware
errors.

**Signature**

```ts
type Error<R> = Schema.Schema.Type<ErrorSchema<R>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L376)

Since v4.0.0