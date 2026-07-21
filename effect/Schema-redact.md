Package: `effect`<br />
Module: `Schema`<br />

## Schema.redact

Middleware that wraps decoded errors in `Redacted`, preventing sensitive
schema details from leaking in error messages.

**Signature**

```ts
declare const redact: <S extends Constraint>(schema: S) => middlewareDecoding<S, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L9073)

Since v4.0.0