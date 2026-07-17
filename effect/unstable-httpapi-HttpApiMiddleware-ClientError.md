Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.ClientError

Extracts the client-side error type for middleware that is required on generated clients.

**Signature**

```ts
type ClientError<A> = A extends {
  readonly [TypeId]: {
    readonly clientError: infer CE
    readonly requiredForClient: true
  }
} ? CE
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiMiddleware.ts#L224)

Since v4.0.0